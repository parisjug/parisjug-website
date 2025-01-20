---
date: 2025-02-11T19:00:00
publishDate: 2025-02-11
register: "https://www.helloasso.com/associations/bjpc/evenements/fevrier-2025"
tags:
- big data
- java
- performance
owner: Khanh
title: "Soirée troubleshooting en production"
#videos:
---

## Date et lieu

* Mardi 11 Février 2025 à 19h00
* Dans [les locaux de Criteo]({{< ref "/location/criteo.md" >}})

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

### 19h30 : Comment debugger en production ?

Qui n'a jamais rêvé de rajouter une ligne de log à la volée sans redémarrer son application ?
Ne pas avoir à attendre la fin de la CI puis du redéploiement des pods en prod !
Le cycle de vie des applications ayant beaucoup évolué ces dernières années, celui de l'investigation de problèmes (debugging/troubleshooting) n'a pas été facilité par ces évolutions.

Cette présentation va montrer comment nous avons construit un debugger de production qui est utilisé au quotidien pour résoudre des problèmes de prod et même plus !

Nous verrons que grâce à l'API d'instrumentation que nous fournit la JVM, il est possible de collecter toutes les données nécessaires pour une investigation tout en conservant un overhead faible compatible avec la production.
Vous pourrez ainsi développer vos propres outils qui vous aideront à gérer vos incidents en toute sérénité !

Par [Jean-Philippe Bempel]({{< ref "/speakers/jean-philippe-bempel.md" >}})

### 20h30 : Buffet offert par [Criteo]({{< ref "/location/criteo.md" >}})

[{{< figure src="/img/sponsors/2025/criteo.svg" alt="criteo" class="sponsor-svg-logo" width="250" >}}]({{< ref "/location/criteo.md" >}}) 

### 21h00 : Trouver la vérité dans un océan de complexité

"Houston, on a un problème de corruption de data sur nos jobs Spark ! Des rows qui manquent, des rows en double ! Help !"

Ok, qu'est-ce que c'est que ça ?
En plus, ça arrive au pire moment : en pleine migration de cluster.
Forcément, c'est la première chose à laquelle les utilisateurs vont penser... et ils le font.

C'est parti.
On va trouver la root cause, sans tomber dans les biais cognitifs, sans a priori.
Ça va nous prendre du temps, mais on y ira progressivement et de manière méthodique.

Partagez avec moi ce replay d'un incident majeur survenu avec Spark.
Vous ne connaissez pas Spark, aucun problème !
Le but ici est d'insister sur les démarches efficaces pour chercher (et trouver !) la root cause d'un problème, de l'appliquer à ce cas spécifique et d'en profiter pour réviser quelques points techniques sur le calcul distribué, l'idempotence, les fonctions de hash, les additions à virgule flottante... Accrochez vos ceintures !

Par [William Montaz]({{< ref "/speakers/william-montaz.md" >}})

### 22h00 : 3ème mi-temps des juggers

{{< replay-section >}}

## Feedback

{{< sponsor-section >}}

{{% coc-section %}}
