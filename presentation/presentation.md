---
## Front matter
lang: ru-RU
title: Модель конкуренции двух фирм"
subtitle: Лабораторная работа №8
author:
  - Покрас Илья Михайлович 
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 2 марта 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

## Цель работы

Целью данной работы является построение модели конкуренции двух фирм.

## Задание

1. Построить графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1.


2. Построить графики изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2.


## Ход работы

Код Julia(@fig:001 - @fig:002):

![Код - 1 часть](./image/jlcode-1.png){#fig:001 height=75%}

## Ход работы

![Код - 2 часть](./image/jlcode-2.png){#fig:002 height=80%}

## Ход работы

Результаты(@fig:003 - @fig:005):

![Мат. модель первого случая](./image/jlmodel-1.png){#fig:003 height=75%}

## Ход работы

![Мат. модель второго случая](./image/jlmodel-2.png){#fig:004 height=75%}


## Ход работы

Код на OpenModelica(@fig:005 - @fig:007)

![Код - I случай](./image/omecode-1.png){#fig:005}

## Ход работы

![Код - II случай](./image/omecode-2.png){#fig:006}

## Ход работы

Результаты(@fig:008 - @fig:010):

![Мат. модель первого случая](./image/omemodel-1.png){#fig:007 height=75%}

## Ход работы

![Мат. модель второго случая](./image/omemodel-2.png){#fig:008 height=75%}

## Результаты

В результате проделанной работы был написан код на Julia и OpenModelica и были построены математические модели конкуренции двух фирм".