---
code: UI-01
page-background: backgrounds/vincent2.jpg
sous-famille: Interface
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# UI-01 - Utiliser un mécanisme de lazy loading

## Description

Le lazy loading consiste à charger et afficher les images situées sous la ligne de flottaison lorsque celles-ci entrent dans l’écran. Cette technique permet de ne pas charger les images tant que l’utilisateur ne les voit pas (ex: les images se situant plus bas sur la page). Ainsi, le lazy loading garantit que les images ne soient chargées que lorsque cela est nécessaire. Cela permet d'économiser de la puissance de traitement, et donc la consommation d’énergie associée étant donné que les utilisateurs ne scrollant pas ne téléchargent pas les images concernées.

## Mise en œuvre

En tant que développeur, j’ajoute l’attribut loading="lazy" sur les éléments `<img>` ou `<iframe>`:

``<img src="image.jpg" alt="alternative de l'image" loading="lazy"> <iframe src="video-player.html" title="…" loading="lazy"> </iframe>``

## Tests d’acceptance

L’attribut ``<loading="lazy">`` est présent sur les contenus le nécessitant
