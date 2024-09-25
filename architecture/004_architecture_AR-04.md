---
code: AR-04
page-background: backgrounds/vincent2.jpg
sous-famille: Données
responsable: Architecte logiciel / Développeur / Métier
benefice: Environnement
bonne-pratique-essentielle: oui
---
# AR-04 - Définir une politique de cycle de vie des données et l’appliquer

## Description

Le cycle de vie d’une donnée correspond à l’enchainement des étapes par lesquelles va passer une donnée tout au long de son existence (de sa collecte / création à sa suppression).

La réglementation RGPD actuelle impose de maîtriser la gestion des données pour certaines catégories (données personnelles encadrées par le RGPD). La gestion du cycle de vie des autres catégories de données n’est pas forcément maîtrisée par les entreprises. Ces données, sans délais de péremption, sont alors accumulées, ce qui contribue donc à un accroissement du volume de données, des volumes de sauvegardes, de ressources consommées pour accéder aux données.

Les équipes doivent donc impérativement définir une politique de cycle de vie des données et l’appliquer. Cela implique notamment de définir une durée de conservation pour chaque catégorie de données. Des outils permettent d’automatiser la suppression des données.

La gestion du cycle de vie des données peut être réalisée de la façon suivante :

- Le métier définit des règles de conservation des données utilisées pour les cas d’usages
- Les règles de conservation des données dans le Lac sont les mêmes que celles des cas d’usages métiers associés
- Des outils sont mis en place afin de supprimer automatiquement les données une fois leur date de conservation expirée

Cependant, le métier ne définit pas toujours les règles de conservation des données.

## Mise en œuvre

En tant que collaborateur côté métier,  je définis des règles de conservation pour les données que j'ajoute/j'utilise dans le Lac de données.

## Tests d’acceptance

Des règles de gestion du cycle de vie sont définies pour chaque catégorie de données