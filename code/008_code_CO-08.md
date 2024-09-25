---
code: CO-08
page-background: backgrounds/vincent2.jpg
sous-famille: Javascript
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# CO-08 - Utiliser uniquement les portions indispensables des librairies JavaScript

## Description

Les bibliothèques JavaScript telles que jQuery sont d’excellents outils pour réaliser rapidement des sites, car ils répondent à presque tous les besoins les plus courants. Revers de la médaille, on n’en utilise généralement qu’une petite portion. Or ces bibliothèques ne s’appuient pas tous sur une architecture modulaire, ce qui contraint l’internaute à télécharger toute la librairie pour n’utiliser qu’un faible pourcentage de ses fonctionnalités.

## Mise en œuvre

En tant que développeur, dans la mesure du possible, je n’ai pas recours à des bibliothèques (ex : je peux me baser sur le code de [https://youmightnotneedjquery.com](https://youmightnotneedjquery.com/) à la place d’utiliser jquery) ou je n’en conserve que les portions réellement utilisées.
Si une contrainte m’oblige à utiliser des librairies pour mon projet, j’opte pour les alternatives légères qui répondent au mieux à mon besoin.

## Tests d’acceptance

Le nombre de bibliothèques dont des portions non indispensables sont utilisées est inférieur ou égal à 1.
