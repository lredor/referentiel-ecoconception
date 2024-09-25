---
code: CO-18
page-background: backgrounds/vincent2.jpg
sous-famille: Méthodes et outils
responsable: Développeur
benefice: Performance
---
# CO-18 - Optimiser l’écriture du code

## Description

Veiller à optimiser le code et sa qualité est essentiel pour alléger le poids des pages et améliorer ainsi leur affichage.

Voici les différents éléments sur lesquels il est possible d’agir :

* Forme du code HTML (balisage). Si la forme n’est pas optimale le navigateur corrigera dynamiquement un certain nombre d’éléments pour afficher au mieux les pages posant problème induisant une consommation inutile.
* Syntaxe du code correcte permettant aux interpréteurs d’exécuter le code plus facilement et donc plus rapidement. Le processeur est donc sollicité moins longtemps.
* Evaluation du code statique en phase de test pour repérer des erreurs de programmation ou de conception et témoigner de la maintenabilité du code.

## Mise en œuvre

* Forme du code HTML : En tant que développeur, j’utilise le [validateur du W3C](https://validator.w3.org/) (World Wide Web Consortium) pour vérifier que les pages sont bien valides et que le code HTML est correctement formé.
* Syntaxe du code : en tant que développeur, j’utilise **ESLint** ou **JSLint** pour le code JavaScript et **Stylelint** pour les feuilles de styles
* Evaluer le code statique : en tant que développeur, j’utilise l’outil SonarQube pour vérifier la qualité de mon code

## Tests d’acceptance

* Forme du code HTML : Le validateur du W3C a été utilisé pour vérifier le code HTML &
  le nombre d’erreurs critiques est égal à 0
* Syntaxe du code : Un linter a été utilisé &le nombre de lignes de code source non validées par
  un linter est égal à 0
* SonarQube a été utilisé pour les tests
