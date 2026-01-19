# Paris JUG Website

## New Dev

1. Fork and clone locally this repository

2. In the root folder:

```shell
git submodule update --init
```

3. Test locally:

```shell
hugo server -D
```

or for full rebuilds on change

```shell
hugo server --disableFastRender
```

or with docker

```shell
docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313 \
  hugomods/hugo:std-ci-0.139.4 \
  server --bind 0.0.0.0
```  

## PR Preview

To generate a preview deployment of a pull request:

1. Comment `/preview` on the pull request
2. The GitHub Actions workflow will automatically build and deploy the site to Surge.sh
3. A preview URL will be posted as a comment (e.g., `https://pr-123-parisjug-preview.surge.sh`)

**Note for maintainers:** The `SURGE_TOKEN` secret must be configured in the repository settings. To generate a token:

```shell
npm install -g surge
surge login
surge token  # Add this to GitHub Secrets as SURGE_TOKEN
```

## Creating Content

### Creating an Event

1. Create a document using:

```shell
hugo new content/events/<year>/<month>-<day>-<name>.md
```

2. Edit the event metadata:

- `date`: The date of the event (with time)
- `draft` (optional): If set to `true`, the event won't be published on website
- `publishDate` (optional): The date from which the event will be published (requires to rebuild the site)
- `publishFrontPageDate` (optional): The date from which the event will be published on the front page
- register (optional): The link to the eventbrite registration frame (ex `https://www.helloasso.com/associations/bjpc/evenements/janvier-2026`)
- `tags` (optional): A list of tags related to the event for navigation and SEO
- `title`: The title of the event (without date)
- `videos` (optional): A list of the replay videos (ex: `https://www.youtube.com/watch?v=xxxx`)

3. Add the event details as content

### Creating a Spearker

1. Create a document using:

```shell
hugo new content/speakers/<first_name>-<last_name>.md
```

2. Edit the speaker metadata:

- `title`: The readable name of the speaker
- `bluesky` (optional): The Bluesky handle of the speaker (full handle like username.bsky.social).
- `twitter` (optional): The Twitter handle of the speaker (without `@`)

 If both `bluesky` and `twitter` are specified, only the Bluesky profile will be displayed.

3. Add the speaker biography as content.

### Updating Sponsors

Sponsors data are located in three locations:

1. `static/img/sponsors/` contains SVG image of the sponsors.  
   Please make sure the logos does not contains margin.
   You can easily trim them editing the `viewport` attribute of the image.
2. `layout/partials/widgets/sponsors.html` contains the HTML code of the sponsor sidebar widget.
3. `content/about/sponsors.md` contains the Markdown code of the sponsor Web page.

## Web site custom features

### Content Automation

- The home page contains the last events and shows:
  - The registration link a week before the start of the event,
  - The event video if present and event is past,
  - The event details summary if details section is present,
  - The event summary otherwise.
- Speakers page in an automatec alphabetic index.
- Speaker conference list from the speaker page is updated if a speaker is mentioned in an event content.
- Speaker profile picture comes from Bluesky (if available) or Twitter and is regularly updated. When both are specified, only Bluesky is displayed.

### Custom Shortcodes

There is two kinds of custom short codes: generic ones, and section ones.
The section shortcode are expected to be used within `event` page content.

#### Flickr slideshow

The `flickr` shortcode generates a gallery from a Flickr album:

`{{< flickr id="72157659120711844" img="https://live.staticflickr.com/5783/23153505766_8b0cb95615_z.jpg" >}}`

Using the following paramters:

- `id`: the Flickr album id,
- `img`: the static URL of a picture in the album.

#### Gallery

The `gallery` shortcode generates an image gallery from page resources:

`{{< gallery match="images/*" >}}`

Using the following paramters:

- `match` _optional_: The path of images to include to the gallery (`gallery/*`) by default.

#### Iframe

The `iframe` shortcode allows to insert safe frame into pages:

`{{< iframe src="https://example.com" title="content-title" width="425" height="350" >}}`

Using the following parameters:

- `src`: The target of the frame,
- `title` _recommanded_: The description of the frame content for accessibility,
- `width` _optional_: The width of the frame (using [CSS values](https://developer.mozilla.org/en-US/docs/Web/CSS/width#values) like `300px`or `100%`),
- `height` _optional_: The height of the frame (using CSS values](https://developer.mozilla.org/en-US/docs/Web/CSS/height#values) like `300px` or `100%`).

#### Section: Code of Conduct

The `coc-section` shortcode renders a page section with our code of conduct:

`{{% coc-section %}}`

#### Section: Register

The `section-register` shortcode generates a registration frame for an event:

`{{< section-register >}}`

#### Section: Replay

The `replay-section` shortcode renders a page section with YouTube thumbnails and links of an event videos:

`{{< replay-section >}}`

#### Section: Sponsor

The `sponsor-section` shortcode renders a page section with the year-related sponsors of the event:

`{{< sponsor-section >}}`

#### Unsafe

The `unsafe` shortcode allows to insert raw HTML content in Markdown pages:

```
{{< unsafe >}}
<div>Some content</div>
{{< /unsafe >}}
```

## Third Parties

- [Mainroad](https://github.com/Vimux/Mainroad) (GLP 2.0)
- [medium-zoom](https://github.com/francoischalifour/medium-zoom) (MIT)
