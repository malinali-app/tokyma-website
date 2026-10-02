---
title: "A working shelf"
slug: working-shelf
date: 2024-09-12
description: "Speech, dictionaries, and bitext we actually reach for — ALFFA, DiLAF, BibleTTS, AfriQA, Lacuna, and a handful of West and Central African sets."
summary: "A low-resource pair is rarely no data. It is data in the wrong place, licence, or register."
tags: ["datasets", "speech"]
---

A low-resource pair is rarely “no data”. It is data in the wrong place, the wrong licence, the wrong register, or a Drive folder someone emailed in 2018. This shelf is opinionated toward West and Central Africa because that is where we have spent the most time. It is not exhaustive.

For *where* languages are spoken, [languageplayer.io](https://languageplayer.io/language-map/?c=15.6%2C22.04&z=5) and CLEAR / TWB’s [language-use data](https://translatorswithoutborders.org/language-data-by-country/) are the right first maps. Maps do not train models. They stop you training the wrong one.

## Speech

[ALFFA](https://www.openslr.org/25/) (African Languages in the Field: speech Fundamentals and Automation), OpenSLR 25, remains the first ASR baseline many Wolof papers report against: field-recorded African speech, not studio English. [BibleTTS](https://www.openslr.org/129/) adds Asante Twi, Akuapem Twi, Ewe, Hausa, Lingala, and Yoruba under CC BY-SA 4.0. The recordings are excellent and liturgical. They are dangerous if they are *all* you train on.

On Wolof, three checkpoints are worth naming together: [Oolel](https://huggingface.co/soynade-research/Oolel-v0.1), [SpeechBrain’s wav2vec2](https://huggingface.co/speechbrain/asr-wav2vec2-dvoice-wolof) (ALFFA WER 16.25), and [abdouaziiz’s XLS-R](https://huggingface.co/abdouaziiz/wav2vec2-xls-r-300m-wolof-lm) (ALFFA_PUBLIC WER around 0.21). WER on ALFFA is not WER on a noisy motorbike voice note. Treat the numbers as ordering.

SIL Bloom speech fills languages absent from Common Voice: [Bambara](https://huggingface.co/sil-ai/wav2vec2-bloom-speech-bam), [Soninke](https://huggingface.co/sil-ai/wav2vec2-bloom-speech-snk), [Mamara Sénoufo](https://huggingface.co/sil-ai/wav2vec2-bloom-speech-myk). RobotsMali’s [Jeli ASR](https://github.com/robotsmali-ai/jeli-asr) and a [31-hour Bambara set](https://zenodo.org/records/7907558) are what a national-lab speech programme looks like when it is real. [Senelangues](https://senelangues.huma-num.fr/Archives/corpus.php) holds light archives for Serer, Ménik, and neighbours — small, precious, easy to overfit. Dioula has a public lever in [Common Voice](https://commonvoice.mozilla.org/dyu/speak).

## Dictionaries and bitext

Neural translation without a lexicon is how you invent a word for “mosquito net” that no nurse uses. [DiLAF](http://pagesperso.ls2n.fr/~enguehard-c/DiLAF/index.php) still matters: French to Bambara, Hausa, Kanuri, Nouchi, Tamajaq, Wolof, Zarma. Kanuri is a Sahel language of Niger, Nigeria, Chad, Cameroon, and into Sudan. Nouchi is Abidjan. Tamajaq is Tuareg. Zarma is Songhai of Niger. A bilingual dictionary is a constrained parallel corpus with unusually high precision.

For question-shaped text, Masakhane’s [AfriQA queries](https://github.com/masakhane-io/afriqa/tree/main/data/queries) cover Bembe, Fon, Hausa, Igbo, Kinyarwanda, Swahili, Twi, Wolof, Yoruba, and Zulu — a different register from news, useful in evaluation even when you do not train on it. The community [dataset list](https://github.com/masakhane-io/masakhane-community/blob/master/list-of-datasets.md) should be read before anyone proposes a new crawl. [Lacuna Fund](https://lacunafund.org/datasets/language/) has financed sets for Hausa, Igbo, Nigerian Pidgin, and Yorùbá; for Afar, Amharic, Oromo, Somali, and Tigrinya; for Kiswahili and the Dholuo / Luhya cluster; and a twenty-language pack stretching from Bambara to isiZulu. Funded data still has licences.

## A few languages we keep coming back to

Google Translate already “covers” Bambara; Google even [told the story](https://blog.google/technology/research/building-language-models-one-story-at-a-time/). Coverage is not a Malian radio workflow. RobotsMali’s [Bayelemabaga](https://huggingface.co/datasets/RobotsMaliAI/bayelemabaga) (~45k lines) sits beside [Kumatigi](https://huggingface.co/datasets/Tysby101/kumatigi) and the audio above. Even a lyrics page such as [Mandjou](https://www.mali-pense.net/Mandjou-de-Salif-Keita.html) is a reminder that register is not a news crawl. Fine-tuning Bambara is no longer a race to be first in the language. It is a question of whose system, and for which use.

Nande, a Bantu language of central Africa, has a named researcher, a French pair, a published checkpoint, and a countable corpus: [nnd_fr_mt_v3](https://huggingface.co/SalomonMetre13/nnd_fr_mt_v3) and [nnd_fr_26k](https://huggingface.co/datasets/SalomonMetre13/nnd_fr_26k). It is not waiting on a consumer catalogue.

Wolof is the rare case where speech papers are ahead of the average translation blog post. Scripture is on [eBible](https://ebible.org/details.php?id=wolKYG); [dofbi/jolof](https://huggingface.co/datasets/dofbi/jolof) is on Hugging Face. Qur’an bitext circulates on unstable Drive links — check the licence before training.

Serer and Fula share noun-class suffixes. That is a linguistic fact, not a modelling trick: if you are pivoting or sharing subword vocabulary between Seereer and Pulaar, you have a reason. Do not assume mutual intelligibility; morphology will leak in useful ways if you are careful. Soninke has a Bloom speech model; Soussou is still thinner in public ASR; Dioula has Common Voice. Mande languages are a family. They are not a single training file.

Licence first. Register mixed on purpose. Speech is bitext you have not typed yet. Cite the lab that already did the collection — RobotsMali, Masakhane, SIL, Salomon Metre, Soynade. If you have a corpus that should be on this shelf, write to [hello@tokyma.io](mailto:hello@tokyma.io). We would rather link than duplicate.
