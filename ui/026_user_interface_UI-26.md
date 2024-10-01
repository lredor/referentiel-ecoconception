---
code: UI-26
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: UX/UI Designer ou développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# UI-26 - Limiter le nombre de webfonts utilisées choisir les bons formats

## Description

Les webfonts sont des polices spécialement créées pour les sites Web. Elles sont généralement hébergées sur un serveur Web. Ainsi, les polices Web sont téléchargées par le navigateur lors du rendu de la page Web, puis appliquées au texte. Chaque webfont propose un certain nombre de variantes (standard, light, semi-bold, bold, black…) et autant de fichiers à télécharger

A l’inverse, une police système est une police déjà présente sur le système d’exploitation d’un terminal utilisateur et ne nécessite donc aucun téléchargement.

Afin de limiter le poids de la police utilisée, il faudra privilégier les polices systèmes ou limiter le nombre de variantes de webfonts utilisées en privilégiant les formats WOFF et WOFF2 (A noter : WOFF2 est un format plus compressé qui n’est pas encore supporté par les anciennes versions de navigateur)

## Mise en œuvre

En tant que UX/UI Designer, il y a plusieurs options pour limiter le nombre de webfonts utilisées :

* Utiliser les polices systèmes

Selon les systèmes d’exploitation, les polices systèmes peuvent être différentes, il faut donc prévoir plusieurs polices pour assurer l’affichage.
En CSS, la propriété font-family permet de définir une liste, ordonnée par priorité, de polices à utiliser pour mettre en forme le texte de l’élément cible.

Un exemple de trame pour les fonts de type Monospace :

```
Font-family: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
```

Un exemple de trame pour les fonts de type Sans Serif :

```
Font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
```

* Réduire le nombre de webfonts utilisées

Afin de réduire le nombre de fichiers téléchargés, utiliser la police personnalisée uniquement sur les titres et utiliser une police système pour le texte des paragraphes, par exemple.

En CSS, la propriété @font-face permet l’utilisation de fontes personnalisées.
En tant que développeur, après avoir indiqué la fonte à utiliser, je liste les fontes de fallback (en cas d’indisponibilité d’une fonte, le navigateur tente d’utiliser sa suivante, etc).

Un exemple de trame :

```
@font-face {  
     font-family: "Open Sans";
     src: url("/fonts/OpenSans-Regular-webfont.woff2") format("woff2"),
          url("/fonts/OpenSans-Regular-webfont.woff") format("woff");
}
```

## Tests d’acceptance

Le nombre de fichiers de webfonts est inférieur ou égal à 2.
Le format WOFF2 puis le format WOFF sont proposés.
Limiter les polices d’icon
