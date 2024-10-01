---
code: UI-03
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Environnement
---
# UI-03 - Fournir des CSS print optimisés

## Description

Les CSS print permettent de proposer une version imprimable d’une page web. Les pages web sont composées d’éléments (headers, footers, etc) qui ne sont pas forcément pertinents pour l’utilisateur et qui induiraient donc du gaspillage de ressources à l’impression.

## Mise en œuvre

En tant que Product Owner, je sélectionne les pages pour lesquelles des CSS print doivent être mis à disposition (les pages importantes et destinées à être imprimées).
En tant que développeur ou intégrateur, je réalise un CSS print optimisé en utilisant

* Un fond blanc
* Uniquement le contenu pertinent pour l’utilisateur. Ainsi, le header, le footer, le menu, le sidebar, etc. doivent être masqués. Toutes les images sauf celles du contenu doivent être supprimées.

Un exemple de CSS print optimisé :

body { background-color :#ﬀf; font-family :Serif; font-size :15pt; }
#page { margin :0; border :none; }
#banner, #menuright, #footer { display :none; }
h1#top { margin :0; padding :0; text-indent :0; line-height :25pt; font-size :25pt; } (...)

## Tests d’acceptance

Les pages disposent d’un CSS print optimisé.
