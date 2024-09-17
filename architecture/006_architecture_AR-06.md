---
code: AR-06
page-background: backgrounds/vincent2.jpg
sous-famille: Données
responsable: Architecte logiciel / Développeur / Ops produit
benefice: Environnement
bonne-pratique-essentielle: oui
---
# AR-06 - Optimiser les requêtes et les accès aux données au strict nécessaire

## Description

Les mauvaises performances d’une base de données peuvent par exemple être causées par :

- Des requêtes mal rédigées (problème le plus récurrent)
- Une mauvaise structure de données
- Un problème d'indexation

Or, de mauvaises performances induisent des surconsommations d’énergie et accélèrent l’obsolescence du matériel.

## Mise en œuvre

En tant qu’architecte logiciel / développeur, je choisis une structure de modèle de données appropriée (cf fiche pratique AR-05).

En tant qu’architecte logiciel / développeur, j’identifie les requêtes ayant un temps d’exécution important. Pour ces requêtes :

- Je combine les requêtes pour lesquelles des données redondantes sont récupérées
- Je permets le chargement progressif (lazy-load) des composants des requêtes

L'optimisation manuelle des requêtes peut s'avérer difficile et fastidieuse, c'est pourquoi il peut s’avérer intéressant d’utiliser un optimiseur de requêtes  ou d’externaliser les efforts d'optimisation.

En tant qu’architecte logiciel / développeur, je mène une opération de défragmentation de ma base de données (opération visant à réorganiser le stockage des données et permettant ainsi un accès plus rapide aux données) lorsque mes outils m’en indiquent la nécessité.

En tant qu’Ops produit, je m'assure que les serveurs hébergeant les bases de données disposent à tout moment de suffisamment de ressources en vérifiant la charge CPU, la mémoire et l'espace disque des serveurs associés en cas de problèmes de performance.

## Tests d’acceptance

Rien ne permet à date de valider la bonne forme d'une requête.
Pour la partie lazy-loading, se référer à la fiche lazy-loading des images (fiche du référentiel numéro UI-01)
