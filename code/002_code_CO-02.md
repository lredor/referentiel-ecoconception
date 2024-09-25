---
code: CO-02
page-background: backgrounds/vincent2.jpg
sous-famille: CSS
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# CO-02 - Utiliser uniquement les portions indispensables des frameworks CSS

## Description

Les frameworks CSS prêts à l’emploi (Bootstrap, skeleton, gumby, foundation…) sont d’excellents outils pour réaliser rapidement des sites, car ils répondent à presque tous les besoins les plus courants. Revers de la médaille, on n’utilise généralement qu’une petite portion de ces frameworks. Or, ces frameworks ne s’appuient pas tous sur une architecture modulaire, ce qui contraint l’internaute à télécharger la librairie entière pour n’utiliser qu’un faible pourcentage de ses fonctionnalités.

## Mise en œuvre

En tant que développeur, dans la mesure du possible, je n’ai pas recours à des frameworks ou je n’en conserve que les portions réellement utilisées (voir [https://getbootstrap.com/customize](https://getbootstrap.com/customize)).
Si une contrainte m’oblige à utiliser des librairies ou framework pour mon projet, j’opte pour les alternatives légères qui répondent au mieux à mon besoin.

## Tests d’acceptance

Le nombre de frameworks utilisés **est inférieur ou égal à 1**
