---
code: UI-23
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur et intégrateur
benefice: Performance
---
# UI-23 - Proposer plusieurs tailles d'images

## Description

Les services numériques utilisent plusieurs tailles d'une même image en fonction de la taille de l’écran du terminal utilisateur. Il est préférable que les images soient disponibles dans les différentes tailles utilisées par le service et non qu'elles soient redimensionnées dans le code HTML avec les attributs **height** et **width**.

En effet, le redimensionnement des images, lorsqu'il est effectué à la demande, génère des charges de traitements, des productions de fichiers intermédiaires qui introduisent des déperditions d'énergie à chaque demande.  

## Mise en œuvre

En tant que développeur et/ou intégrateur, je propose plusieurs tailles pour les photos (non applicable pour les svg) en utilisant les attributs srcset et sizes.
Les attributs srcset et sizes permettent de fournir plusieurs images sources avec des indications pour aider le navigateur à faire le bon choix.

* srcset définit l'ensemble des images offertes au choix du navigateur, et la taille de chaque image
* sizes définit un ensemble de conditions pour le média (par ex. des largeurs d'écran) et indique quelle taille d'image serait la plus adaptée si certaines conditions sont satisfaites

Un exemple de trame :

```
<img srcset="image-480w.jpg 480w
             image-800w.jpg 800w" 
     sizes="(max-width: 600px) 480px, 800px" 
     src="image-800w.jpg" 
     alt="alternative de l'image">
```

## Tests d’acceptance

Deux tailles d'images sont proposés
