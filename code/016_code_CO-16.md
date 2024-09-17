---
code: CO-16
page-background: backgrounds/vincent2.jpg
sous-famille: Méthodes et outils
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# CO-16 - Supprimer le code inutilisé

## Description

L’exécution d’un code induit un transfert et un traitement de données, qui engendrent à leur tour des impacts environnementaux. Avoir du code inutilisé induit alors des impacts environnementaux inutiles.
Par ailleurs, réduire le code permet de limiter les bugs et les problèmes de performance lors de la modification du code.
Dès lors, l’intérêt de garder du code inutilisé est limité, d’autant plus que la probabilité qu’il soit réutilisé un jour est très faible.

## Mise en œuvre

En tant que développeur, sur chrome, le panneau DevTools Couverture (fonction à activer) m’aide à localiser le code CSS et JavaScript inutilisé (ligne par ligne).
D’autres outils me permettent d’identifier et de supprimer spécifiquement le CSS inutilisé, en recopiant les codes HTML et CSS de ma page, par exemple : [UnCSS](https://uncss-online.com/), UnusedCSS, PurifyCCC, etc.

## Tests d’acceptance

Le taux de CSS inutilisé est inférieur à 70%
Le taux de JS inutilisé est inférieur à 70%
