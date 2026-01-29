#!/bin/bash
# Fetch and save speaker avatars from Bluesky and Twitter APIs
#
# Usage:
#   ./update-speaker-avatars.sh [--speaker SLUG] [--force]
#
# Options:
#   --speaker SLUG  Update only this speaker
#   --force         Overwrite existing avatars

SPEAKERS_DIR="content/speakers"
AVATARS_DIR="assets/images/speakers"
BLUESKY_API="https://public.api.bsky.app/xrpc/app.bsky.actor.getProfile"

# Check dependencies
if ! command -v curl &> /dev/null; then
    echo "Error: curl is required but not installed."
    exit 1
fi

if ! command -v jq &> /dev/null; then
    echo "Error: jq is required but not installed."
    echo "Install with: sudo apt-get install jq (or brew install jq on Mac)"
    exit 1
fi

# Parse arguments
FORCE=false
SPECIFIC_SPEAKER=""

while [[ $# -gt 0 ]]; do
    case $1 in
        --force)
            FORCE=true
            shift
            ;;
        --speaker)
            SPECIFIC_SPEAKER="$2"
            shift 2
            ;;
        *)
            echo "Unknown option: $1"
            echo "Usage: $0 [--speaker SLUG] [--force]"
            exit 1
            ;;
    esac
done

# Check if speakers directory exists
if [ ! -d "$SPEAKERS_DIR" ]; then
    echo "Error: Speakers directory not found: $SPEAKERS_DIR"
    echo "Make sure you're running this from the repository root."
    exit 1
fi

# Create avatars directory if it doesn't exist
mkdir -p "$AVATARS_DIR"

# Function to parse YAML frontmatter
parse_frontmatter() {
    local file=$1
    local key=$2

    # Extract frontmatter between --- delimiters and get the value
    awk -v key="$key" '
        BEGIN { in_fm = 0; found = 0 }
        /^---$/ {
            if (in_fm == 0) { in_fm = 1; next }
            else { exit }
        }
        in_fm && $0 ~ "^" key ":" {
            sub("^" key ":[[:space:]]*", "")
            gsub(/^["\047]|["\047]$/, "")
            print
            found = 1
            exit
        }
        END { if (!found) print "" }
    ' "$file"
}

# Function to fetch Bluesky avatar
fetch_bluesky_avatar() {
    local handle=$1

    local response=$(curl -s -m 10 "${BLUESKY_API}?actor=${handle}" 2>/dev/null)

    if [ $? -eq 0 ] && [ -n "$response" ]; then
        echo "$response" | jq -r '.avatar // empty' 2>/dev/null
    fi
}

# Function to fetch unavatar (Twitter/X)
fetch_unavatar() {
    local twitter=$1
    local url="https://unavatar.io/twitter/${twitter}"

    # Check if response is an image (follow redirects, use browser user agent)
    local content_type=$(curl -s -L -I -m 10 \
        -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
        "$url" 2>/dev/null | grep -i "content-type:" | tail -1 | cut -d' ' -f2- | tr -d '\r')

    if [[ "$content_type" == image/* ]]; then
        echo "$url"
    fi
}

# Function to download image
download_image() {
    local url=$1
    local output=$2

    # Follow redirects, use browser user agent, handle cookies
    curl -s -L -m 10 -o "$output" \
        -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
        -H "Accept: image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8" \
        -H "Accept-Language: en-US,en;q=0.9" \
        -H "Referer: https://unavatar.io/" \
        "$url" 2>/dev/null
    return $?
}

# Function to update a single speaker
update_speaker() {
    local speaker_file=$1
    local slug=$(basename "$speaker_file" .md)
    local avatar_path="${AVATARS_DIR}/${slug}.jpg"

    # Skip if already exists and not forcing
    if [ -f "$avatar_path" ] && [ "$FORCE" = false ]; then
        echo "⏭️  ${slug}: Avatar exists (use --force to overwrite)"
        return 1
    fi

    # Parse frontmatter
    local bluesky=$(parse_frontmatter "$speaker_file" "bluesky")
    local twitter=$(parse_frontmatter "$speaker_file" "twitter")

    if [ -z "$bluesky" ] && [ -z "$twitter" ]; then
        echo "⚠️  ${slug}: No social handles found"
        return 2
    fi

    echo "📥 ${slug}..."

    # Try Bluesky first
    if [ -n "$bluesky" ]; then
        echo "  Trying Bluesky: ${bluesky}"
        local avatar_url=$(fetch_bluesky_avatar "$bluesky")

        if [ -n "$avatar_url" ]; then
            if download_image "$avatar_url" "$avatar_path"; then
                echo "✅ ${slug}: Saved from Bluesky"
                return 0
            fi
        fi
    fi

    # Fallback to Twitter via unavatar
    if [ -n "$twitter" ]; then
        echo "  Trying Twitter via unavatar: ${twitter}"
        local avatar_url=$(fetch_unavatar "$twitter")

        if [ -n "$avatar_url" ]; then
            if download_image "$avatar_url" "$avatar_path"; then
                echo "✅ ${slug}: Saved from Twitter"
                return 0
            fi
        fi
    fi

    echo "❌ ${slug}: Could not fetch avatar"
    return 3
}

# Main execution
if [ -n "$SPECIFIC_SPEAKER" ]; then
    # Update specific speaker
    speaker_file="${SPEAKERS_DIR}/${SPECIFIC_SPEAKER}.md"

    if [ ! -f "$speaker_file" ]; then
        echo "Error: Speaker file not found: $speaker_file"
        exit 1
    fi

    echo "Processing 1 speaker..."
    echo ""
    update_speaker "$speaker_file"
    exit $?
else
    # Update all speakers
    speaker_files=()
    while IFS= read -r -d '' file; do
        speaker_files+=("$file")
    done < <(find "$SPEAKERS_DIR" -maxdepth 1 -name "*.md" ! -name "_index.md" -print0 | sort -z)

    total=${#speaker_files[@]}

    if [ $total -eq 0 ]; then
        echo "No speaker files found."
        exit 0
    fi

    echo "Processing ${total} speaker(s)..."
    echo ""

    success=0
    skipped=0
    failed=0

    for speaker_file in "${speaker_files[@]}"; do
        update_speaker "$speaker_file"
        result=$?

        case $result in
            0)
                ((success++))
                sleep 0.5  # Rate limiting
                ;;
            1)
                ((skipped++))
                ;;
            *)
                ((failed++))
                ;;
        esac

        sleep 0.1  # Small delay between requests
    done

    echo ""
    echo "📊 Complete: ${success} updated, ${skipped} skipped, ${failed} failed"
fi
