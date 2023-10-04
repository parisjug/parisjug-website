---
date: 2023-10-10T19:00:00
publishDate: 2023-10-10
tags:
- java
#register: "https://www.eventbrite.fr/tickets-external?eid=716434313317&ref=etckt"
title: "Cloud, serverless et tests avec Google Cloud" 
#videos:
#- https://www.youtube.com/watch?v=q9qT8s01elY
#- https://www.youtube.com/watch?v=uFj0_GWvdWs
---

## Date et lieu

* Mardi 19 Septembre 2023 à 19h00
* Dans [???]({{< ref "/location/agorapulse.md" >}})

> Les sessions sont filmées et le public est photographié. Les photographies sont ensuite publiées sur le site du Paris JUG et autres médias de l'associations Paris JUG. En acceptant cette invitation, vous autorisez le Paris JUG à publier votre photo sur les médias sus-mentionnés.

> Les **inscrits** à l'évènement non présents **5 minutes avant le début de la session**, soit à 19h25, verront leurs **places remises à disposition**.  
Les **non inscrits** à l'évènement ne pourront donc y assister que sous réserve de **places disponibles** sur place **5 min avant le début de la session**, soit à 19h25.  
L’inscription implique de posséder une adresse mail valide sur laquelle vous recevrez une demande de confirmation à laquelle il vous faudra répondre afin de valider votre inscription.
**Toute inscription non confirmée ne sera pas prise en compte !**

## Détails

### 19h00 : Accueil

### 19h30 : Architecture Full Event Driven et Serverless sur Google Cloud

Nous entendons souvent parler d'Architecture Event Driven.

Ce type d'architecture présente des avantages comme le fait d'avoir une latence faible et de traiter les données rapidement.
Cette architecture se marie bien avec les composants Serverless, tout est "drivé" par des événements, il n'y a pas d'orchestrateur central, les composants sont autonomes et facilement interchangeables (pattern Chorégraphie).

A l'extérieur du Cloud, il peut être compliqué et fastidieux de mettre en place ce type d'architecture.

Ce talk a pour but de montrer qu'il est beaucoup plus simple de créer une architecture entièrement Event Driven et Serverless dans Google Cloud.

Pour l'illustrer de façon claire, nous montrerons un use case réel et concret basé sur les vrais données de statistiques de joueurs, pour la coupe du monde du Qatar.

Dans un premier temps, nous présenterons ce use case avec des Cloud Functions et nous les remplacerons ensuite par des services Cloud Run.
A la fin du talk, nous afficherons tous les champs calculés correspondant à nos règles métiers dans Looker Studio, qui est outil de Dataviz sur Google Cloud.

Par [Mazlum Tosun]({{< ref "/speakers/mazium-tosun.md" >}})

### 20h30 : Buffet

[{{< figure src="/img/sponsors/2023/agorapulse.svg" alt="Agorapulse" class="sponsor-svg-logo" >}}](https://www.renaultgroup.com/talents/nos-metiers/digital/)

### 21h00 : BigTesty : voyageons dans le monde des tests d'intégration BigQuery

BigQuery est une base de données orientée analytics et full managée sur Google Cloud Platform.

Il n’y a pas d’outils actuellement sur le marché proposant de faire des tests d’intégration avec BigQuery, lancés sur l’infrastructure réelle et cible.

Sur Google Cloud, BigQuery est utilisé dans quasiment tous les projets Data (Datawarehouse) et nous voyons à quel point ce type d’outil pourrait aider les développeurs à tester leurs requêtes SQL.

Un des challenges est de ne pas maintenir une infra partagée pour les tests entre les développeurs, car l’environnement ne serait pas autonome par développeur.

L’objectif de ce talk est de montrer comment créer des tests d’intégration BigQuery avec une infra éphémère.

Nous expliquerons ensuite pourquoi nous avons souhaité créer une librairie appelé BigTesty afin d’aider la communauté Google Cloud.

BigTesty est en mode Work In Progress, néanmoins nous pensons qu’il est intéressant de partager ce sujet avec l’audience et de présenter les idées derrière cette librairie.

Behind the scene, Dagger est utilisé dans BigTesty en mode multi stages pour gérer la logique de CI CD et d’enchaîner les étapes.

Par [Mazlum Tosun]({{< ref "/speakers/mazium-tosun.md" >}})

### 22h00 : 3ème mi-temps des juggers

{{< replay-section >}}

## Feedback

{{< sponsor-section >}}

{{% coc-section %}}
