---
code: UI-22
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# UI-22 - Fournir des formats d’images optimisés

## Description

Choisir le bon format d’images est crucial pour éviter de transporter des octets inutilement et ainsi économiser de la bande passante. Les formats .avif et .webp offrent de bien meilleures performances que le format classique jpeg.
En revanche, ils ne sont pas pris en charge par tous les navigateurs. Le format .svg, quant à lui, est le format le plus adapté pour les éléments d’interface, les icones ou les diagrammes. Les formats GIF et PNG sont à éviter

## Mise en œuvre

En tant que développeur, dans la balise `<picture>` du code HTML, je déclare les images, dans l'ordre du plus léger au plus lourd en finissant par un format et une balise historique (par exemple : avif puis webp puis jpg). 
Un exemple de trame :

```<picture>
<source srcset="image.avif" type="image/avif">
<source srcset="image.webp" type="image/webp">
<img src="image.jpg" alt="alternative de l'image">
<picture>
```

Pour fabriquer les assets, j’utilise l'outil convert de imagemagick.

## Tests d’acceptance

Le premier format proposé est le format avif, puis webp et enfin un format historique jpg
Le premier format proposé est le format svg et enfin un format historique jpg.

## Mesures

Un exemple pour l’image principale d’une homepage :

![Image originale opera](/img/image_originale_opera.png)

|                            | Avec les formats d'origine | Après compression des images | Avec les images au format .webp | Avec les images au format .avif |
| :------------------------: | :------------------------: | ----------------------------- | ------------------------------- | ------------------------------- |
| **Poids de la page** |          517,6 Ko          | 424Ko (-18%)                  | 367,7 Ko (-29%)                 | 346 Ko (-0,34%)                 |
