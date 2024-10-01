---
code: UI-16
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: PO/ développeur
benefice: Environnement
---
# UI-16 - Vérifier les information saisies par l’utilisateur avant soumission du formulaire

## Description

Lorsqu’un utilisateur complète un formulaire, un processus de vérification des informations saisies (validation des données) peut être mis en place afin de vérifier que les champs obligatoires soient bien complétés ou encore que le format des données soit correct. Ce processus peut être effectué dans le navigateur, avant que les données n'aient été soumises au serveur (validation côté client).
La validation des données côté client permet d’éviter d’envoyer une requête inutile au serveur en cas d’erreur et donc d’économiser les impacts environnementaux associés. En effet, chaque requête repose sur des mécanismes de traitements et d'échanges, qui consomment de l’énergie.

## Mise en œuvre

En tant que développeur, je peux mettre en place la validation des données côté client de plusieurs manières :

* la validation JavaScript, codée en JavaScript, entièrement personnalisable
* la validation de formulaire intégrée avec les fonctions de validation de formulaire HTML5. Elle ne nécessite généralement pas de JavaScript, a de meilleures performances, mais elle n'est pas aussi personnalisable

## Tests d’acceptance

Un mécanisme de validation des données côté client a été mis en place pour 100% des formulaires du service numérique.
