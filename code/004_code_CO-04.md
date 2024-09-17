---
code: CO-04
page-background: backgrounds/vincent2.jpg
sous-famille: CSS
responsable: Développeur
benefice: Performance
---
# CO-04 - DOM - Grouper les déclarations CSS similaires

## Description

Lorsque plusieurs éléments du DOM (Document Object Model) ont des propriétés CSS communes, il est recommandé de les déclarer ensemble dans la même feuille de styles. Cette méthode permet de réduire le poids de la CSS, et donc l’impact environnemental induit par le traitement, le transport et le stockage des données.

## Mise en œuvre

En tant que développeur, à la place de :
h1 {
background-color: gray; color: navy;
}
h2 {
background-color: gray; color: navy;
}
h3 {
background-color: gray; color: navy;
}
J’écris :
h1, h2, h3 {
background-color: gray; color: navy;
}
Pour s’assurer que cette règle soit bien respectée, il est possible de mettre en place le module [stylelint](https://stylelint.io/) dans le projet (devDependencies) et utiliser la règle shorthand-property-no-redundant-values

## Tests d’acceptance

Le nombre de déclaration CSS similaires non regroupées est inférieur ou égal à 1.
