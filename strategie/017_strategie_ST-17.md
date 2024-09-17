---
code: ST-17
page-background: backgrounds/vincent2.jpg
sous-famille: Pilotage
responsable: Equipe Produit
benefice: Performance
---
# ST-17 - Limiter le nombre de requêtes

## Description

Lorsque le navigateur affiche une page, il doit émettre une requête vers un serveur HTTP pour chaque fichier à télécharger. Plus le nombre de requêtes est important, plus les mécanismes de traitements et d'échanges vont consommer des ressources et donc augmenter les impacts environnementaux associés. Dès lors, il convient de limiter au maximum le nombre de requêtes.

## Mise en œuvre

En tant qu’équipe produit, je définis un nombre de requêtes maximum par écran lors de la session de travail sur les indicateurs et suis ce nombre avec l’outil préconisé (Green IT Analysis). Le nombre de requêtes doit tenir compte de toutes les ressources téléchargées (composants d'interface, données, contenus, scripts, feuilles de style...).

## Tests d’acceptance

- Un nombre de requêtes maximal par écran (ex : 40 requêtes maximum) a été défini en fonction des contraintes du service numérique
- Le nombre de requêtes par écran est inférieur à la limite définie

## Mesures

Utiliser les outils pour réaliser les diagnostics (plugin disponibles dans les extensions de navigateur :
GreenIT Analysis et Lighthouse.)
