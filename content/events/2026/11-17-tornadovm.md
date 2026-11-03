---
date: 2026-11-17T19:00:00
draft: true
publishDate: 2026-11-01
register: "https://www.helloasso.com/associations/bjpc/evenements/novembre-2026"
tags:
 - GPU
 - JVM
 - LLM
 - TornadoVM
owner: 
title: "Soirée TornadoVM [en]"
#videos:
---

## Date et lieu

* Mardi 17 Novembre 2026 à 19h00
* Dans Dans [les locaux de Criteo]({{< ref "/location/criteo.md" >}})

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

### 19h30 : Write Once, Accelerate Everywhere: GPU-Ready Java with TornadoVM

In the AI era, accessing GPUs from Java is essential - but it still remains a challenge. TornadoVM bridges this gap by enabling developers to accelerate Java applications on GPUs, CPUs, and FPGAs without writing any GPU code. Originally born as a PhD research project at the University of Manchester, TornadoVM has evolved into a mature open-source framework supported by both academia and a growing global community.

This talk will present the key innovations that are offered by the TornadoVM runtime platform, and will focus on practical ways to optimize existing Java applications through its high-level API. Through hands-on examples, we will demonstrate how to offload computations, manage data efficiently, and achieve significant performance gains - entirely from Java.

We will also showcase GPULlama3.java, a pure Java large language model (LLM) library accelerated with TornadoVM, illustrating how modern AI workloads can run efficiently within the JVM. Finally, a live-coding demo using IntelliJ IDEA will highlight TornadoVM’s integrated profiling and tooling ecosystem for seamless development experience.

{{< speaker "thanos-stratikopoulos" >}}

### 20h30 : Buffet offert par [Criteo]({{< ref "/location/criteo.md" >}})

[{{< figure src="/img/sponsors/2026/criteo.svg" alt="criteo" class="sponsor-svg-logo" width="250" >}}]({{< ref "/location/criteo.md" >}}) 

### 21h00 : Building LLM Inference Engines in Java with TornadoVM and the NVIDIA Ecosystem

As Java enters the AI era, developers are looking for ways to run local large language models (LLMs)
without leaving the JVM. This session presents lessons learned from building GPU-accelerated LLM
inference engines natively in Java using TornadoVM, an open-source framework that transparently
offloads Java programs to GPUs and other accelerators.

Beyond generating optimized CUDA code directly from Java, TornadoVM now provides seamless
access to the NVIDIA software ecosystem, enabling Java applications to leverage libraries such as
cuBLAS, cuDNN, cuFFT, and CUDA runtime APIs without requiring JNI or manually written native
code. This allows developers to combine high-level Java programming with the performance of
NVIDIA’s AI and HPC libraries.

Using jitLLM, a lightweight GPU-accelerated inference engine for Llama models, the session explores
techniques for supporting quantized data types (FP16, Q8, and Q4), integrating with Quarkus and
LangChain4j, and optimizing LLM inference directly in Java. Along the way, attendees will see how
modern Java can target GPUs while interoperating with the broader NVIDIA ecosystem.
The session concludes by discussing how TornadoVM complements emerging JVM technologies such
as Project Babylon and Project Panama, and how these efforts are helping establish Java as a first-
class platform for AI, accelerated computing, and high-performance machine learning.

{{< speaker "thanos-stratikopoulos" >}}

### 22h00 : 3ème mi-temps des juggers

{{< replay-section >}}

## Feedback

{{< sponsor-section >}}

{{% coc-section %}}