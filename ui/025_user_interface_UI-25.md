---
code: UI-25
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: UX/ UI designer
benefice: Performance
          Utilisabilité
---
# UI-25 - Limiter les carrousels automatiques

## Description

Un carrousel est un type de module qui fait la rotation du contenu d'une manière similaire à celle d'un diaporama, soit par une action de l'utilisateur ou par des transitions temporisées. Sa présence implique plusieurs conséquences :

* Un alourdissement du poids des pages par la présence de CSS et JavaScript dédiés mais également par le contenu présent sur chaque écran du carrousel
* Une complexité en termes d'assurance qualité web et d'accessibilité numérique
* Une utilisation plus importante des ressources processeurs dans le cas d'un carrousel automatique

De plus, en réalité, les carrousels ne sont que très peu utilisés par les utilisateurs.

## Mise en œuvre

En tant qu’UX/UI Designer, je peux limiter le recours à un carrousel en :

* Supprimant le carrousel
* Remplaçant le carrousel, par exemple, par l’image la plus importante qu’il contient, ou un résumé des différents contenus qu’il présente (cf bonne pratique UI-22)
* Si un carrousel est nécessaire, je limite le nombre d’écrans présents dans le carrousel, privilégie le lazy loading de ces images et n’autorise son déclanchement que suite à une action de l’utilisateur

## Tests d’acceptance

* Le nombre de carrousels sur la page est égal à 0
* Si la présence d’un carrousel s’avère nécessaire, il est optimisé (nombre d’écran inférieur ou égal à 2 et lazy loading activé)
