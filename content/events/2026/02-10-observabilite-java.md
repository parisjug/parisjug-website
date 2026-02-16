---
date: 2026-02-10T19:00:00
publishDate: 2026-01-15
publishFrontPageDate: 2026-02-01
register: "https://www.helloasso.com/associations/bjpc/evenements/fevrier-2026"
tags:
- cloud
- devops
- tools
owner: Bruce
title: "Soirée Observalibité Java"
videos:
- https://www.youtube.com/watch?v=49s_5cF_i9o
- https://www.youtube.com/watch?v=2frZV2pufVM
---

## Date et lieu

* Mardi 10 Février 2026 à 19h00
* Dans [les locaux de Datadog]({{< ref "/location/datadog.md" >}})

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

### 19h30 : 25 ans de Java : Des monolithes aux microservices pilotés par l’observabilité

Depuis plus de 25 ans, Java n’a cessé d’évoluer, des monolithes déployés sur des serveurs d'applications, aux microservices cloud-native exécutés sur des infrastructures éphémères.
Si les frameworks, les runtimes et les modèles de déploiement ont profondément changé, un défi s’est considérablement complexifié: Comprendre le comportement réel des applications Java en production.

Dans ce talk, Pejman Tabassomi partage son parcours personnel à travers quatre grandes vagues de l’écosystème Java : les systèmes J2EE d’entreprise, la révolution Spring et les conteneurs légers, l’essor des microservices et du cloud-native, puis l’ère actuelle de l’observabilité et de l’intelligence du runtime.
À partir d’exemples concrets, il explique pourquoi les approches classiques de debugging ne fonctionnent plus dans des architectures distribuées, et pourquoi les logs et les métriques ne suffisent plus.

La session explore les pratiques modernes d’observabilité pour les applications Java : tracing distribué, propagation de contexte, instrumentation OpenTelemetry, profiling continu et instrumentation dynamique. Elle met également en lumière des enseignements issus de systèmes observés à grande échelle, notamment autour des architectures asynchrones, des problèmes de performance et des idées reçues sur le rôle de la JVM.

Ce talk s’adresse aux développeurs et ingénieurs Java qui souhaitent mieux comprendre les systèmes distribués modernes et découvrir comment l’observabilité est devenue un élément clé du développement, de l’exploitation et du troubleshooting des applications Java aujourd’hui.

{{< speaker "pejman-tabassomi" >}}

### 20h30 : Buffet offert par [Datadog]({{< ref "/location/datadog.md" >}})

[{{< figure src="/img/sponsors/2026/datadog.svg" alt="sponsor" class="sponsor-svg-logo" width="250" >}}]({{< ref "/location/datadog.md" >}}) 

### 21h00 : La Magie d'OpenTelemetry : réécrire votre app en production 

OpenTelemetry fait apparaître des traces, des métriques et des logs comme par magie… mais que se passe-t-il réellement derrière cet agent JVM que nous ajoutons machinalement à nos applications ?

Cette présentation vous emmène là où personne ne regarde.
Vous verrez comment l’agent d’OpenTelemetry s’infiltre dans votre JVM, intercepte le chargement de vos classes et réécrit votre application à la volée.
On dissèque le pouvoir du javaagent, de l’API Instrumentation, et la mécanique obscure de ByteBuddy qui permettent d’instrumenter Spring, Servlet, JDBC ou même gRPC, sans toucher à une seule ligne de code. Oui, votre appli tourne… mais pas tout à fait comme vous le croyez.

Vous repartirez avec une vision claire de l’impact réel de ces changements en production : latence, allocations, risques de conflits, comportements changés à chaud… ainsi que les bons réflexes pour diagnostiquer ce qui se passe vraiment.

Si vous utilisez OpenTelemetry sans vraiment savoir ce qu’il se passe dans votre JVM, ou si vous voulez enfin comprendre comment un agent peut réécrire votre application en production, alors bienvenue : cette session vous ouvre la boîte noire et révèle la magie.

{{< speaker "bruce-bujon" >}}

### 22h00 : 3ème mi-temps des juggers

{{< replay-section >}}

## Feedback

{{< sponsor-section >}}

{{% coc-section %}}
