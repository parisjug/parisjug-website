---
date: 2026-05-12T19:00:00
publishDate: 2026-05-01
register: "https://www.helloasso.com/associations/bjpc/evenements/mai-2026"
tags:
- java
- performance
- tools
owner: 
title: "Soirée la mémoire dans la jvm"
#videos:
---

## Date et lieu

* Mardi 12 Mai 2026 à 19h00
* Dans [les locaux de MARGO]({{< ref "/location/margo.md" >}})

**Une pièce d'identité est exigée par la sécurité**

> Les sessions sont filmées et le public est photographié.
Les photographies sont ensuite publiées sur le site du Paris JUG et autres médias de l'associations Paris JUG.
En acceptant cette invitation, vous autorisez le Paris JUG à publier votre photo sur les médias sus-mentionnés.

> Les **inscrits** à l'évènement non présents **5 minutes avant le début de la session**, soit à 19h25, verront leurs **places remises à disposition**.  
Les **non inscrits** à l'évènement ne pourront donc y assister que sous réserve de **places disponibles** sur place **5 min avant le début de la session**, soit à 19h25.  
L’inscription implique de posséder une adresse mail valide sur laquelle vous recevrez une demande de confirmation à laquelle il vous faudra répondre afin de valider votre inscription.
**Toute inscription non confirmée ne sera pas prise en compte !**

{{< register-section >}}

## Détails

### 19h00 : Accueil

### 19h30 : G1, ZGC, Shenandoah, ... avec tous ces GCs dans Java, je choisis lequel ?

On a l'impression qu'avec chaque version de Java, il y a de plus en plus de Garbage Collectors (GCs) avec de plus en plus d'options.
On entend des phrases cryptiques telles que "Oh trop bien ZGC est devenu générationnel alors que Shenandoah ne l'est pas" ou "T'as vu chez Netflix ils ont réduit leurs tail latencies avec ZGC".

Du coup on se pose tout plein de questions:

- Qu'est-ce qu'ils racontent ?
- ZGC c'est quoi ?
- Si ce ZGC est si magique, pourquoi il y a d'autres GCs dans Java, hein ?
- Pourquoi on ne parle toujours que des différents GCs de Java mais jamais pour Go ou JavaScript ? chez Java ils ne sont pas capables d'en choisir un ?
- Et en natif, on a besoin d'un GC ?

{{< speaker "antoine-dessaigne" >}}

### 20h30 : Buffet offert par [MARGO]({{< ref "/location/margo.md" >}})

[{{< figure src="/img/sponsors/2026/margo.svg" alt="sponsor" class="sponsor-svg-logo" width="250" >}}]({{< ref "/location/margo.md" >}}) 

### 21h00 : Projet Lilliput : Et si vos objets Java prenaient moins de place ?

La performance des applications Java est étroitement liée à leur empreinte mémoire : plus une application consomme de heap, plus elle exerce de pression sur le garbage collector, le cache CPU, les temps de pause et les coûts d’infrastructure.
Pourtant, une partie de cette mémoire est consommée avant même de stocker nos données métier : chaque objet Java porte avec lui un en-tête, invisible dans le code, mais bien réel en production.

Dans cette session, nous explorerons l’organisation des objets dans la heap.
Nous verrons comment la JVM dispose les objets en mémoire, quelles règles gouvernent leur alignement, leur padding, leurs champs, leurs références et leurs en-têtes.

Enfin, nous étudierons l’apport du Projet Lilliput et des Compact Object Headers : introduits comme fonctionnalité expérimentale avec la JEP 450 dans JDK 24, puis transformés en fonctionnalité standard avec la JEP 519 dans JDK 25.
Cette évolution réduit la taille des en-têtes d’objets dans HotSpot de 96 ou 128 bits à 64 bits sur les architectures 64 bits, avec des gains observés sur l’empreinte mémoire et la pression GC.

Pour rendre ces concepts concrets, nous nous appuierons sur JOL, la bibliothèque Java Object Layout d’OpenJDK, afin d’observer directement la représentation mémoire de différents objets selon plusieurs contextes d’exécution : avec ou sans compression des références, avec différentes configurations d’alignement mémoire et avec les Compact Object Headers.

Vous repartirez avec une meilleure compréhension de ce que coûte réellement un objet Java en mémoire, des outils pour le mesurer, et des clés pour comprendre pourquoi quelques octets gagnés par objet peuvent avoir un impact majeur à l’échelle d’une application.

{{< speaker "achraf-hasbi" >}}

### 22h00 : 3ème mi-temps des juggers

{{< replay-section >}}

## Feedback

{{< sponsor-section >}}

{{% coc-section %}}
