---
code: UI-19
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Performance
---
# UI-19 - Générer des spritesheets CSS lorsque le contexte le permet

## Description

Le principe de cette bonne pratique est de regrouper les images de petite taille (celles de l’interface du site, par exemple) dans une seule image de plus grande taille appelée spritesheet. Ce procédé réduit significativement le nombre de requêtes HTTP.

## Mise en œuvre

De nombreux services en ligne gratuits permettent de générer des spritesheets :

* [CSS Sprites Generator Tool](https://www.toptal.com/developers/css/sprite-generator)
* [Spritegen](https://spritegen.website-performance.org/)
* [CSS Sprites](https://www.csssprites.org/)

## Tests d’acceptance

Des spritesheets CSS sont générés lorsque le contexte le permet.
