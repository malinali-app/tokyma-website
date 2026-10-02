---
title: "When a language appears in the catalogue"
slug: coverage-is-not-ownership
date: 2025-03-10
description: "Google Translate’s expansions are real. They are not the same as a language that communities can inspect, adapt, or take offline."
summary: "Google Translate’s African expansions are genuine engineering. They are easy to misread as the problem being solved."
tags: ["Google Translate", "coverage"]
---

In May 2022, [Google Translate added 24 languages](https://blog.google/products-and-platforms/products/translate/24-new-languages/), among them Ewe, Krio, Lingala, Luganda, Oromo, Sepedi, Tigrinya, Tsonga, and Twi — languages that people working in West and East Africa had been asking about for years. Amharic, Bambara, and Swahili were already there. In 2024 the catalogue grew again: [110 languages](https://blog.google/products-and-platforms/products/translate/google-translate-new-languages-2024/), including Wolof, Fon, Dyula, Fulani, Tiv, and Rundi. The first drop used zero-shot machine translation; the second leaned on a large language model. Both are genuine engineering. Both are easy to misread as the problem being solved.

A language in a cloud dropdown means the vendor has a model that will emit a string, provided there is a network, an account surface, and a quota. The text leaves the device. That is a different artefact from a system that can be inspected, adapted on a local glossary, or used where connectivity is absent or confidentiality is not negotiable. Zero-shot and LLM-assisted expansion is excellent at producing *plausible* text. Field teams often need *controlled* text: the word the nurse said, the name of the village, the negation that flips a consent form.

Open weights look like an escape hatch. Models such as [Gemma](https://ai.google.dev/gemma) can be downloaded, and they will generate in languages that commercial APIs have only recently named. They remain general systems. A chat demo that “speaks Wolof” is not the same as a stable, evaluable translation pair. Hosted inference returns to quota and policy; local inference of a large generator is a different operational problem from shipping a compact pair a workstation can iterate on. The useful role for these models, in the work we see, is still draft and pivot — not the system of record for a language someone claims to support.

None of this is an argument against the expansions. Speakers who can finally search should. The industry is moving faster than it did a decade ago, and tools that did not exist in 2018 now reach pairs that were effectively closed. The remaining question is quieter: once a language is “supported,” who can change it, where it may run, and whose orthography it writes.
