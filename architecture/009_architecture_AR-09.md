---
code: AR-09
page-background: backgrounds/vincent2.jpg
sous-famille: Données
responsable: Architecte logiciel
benefice: Environnement
---
# AR-09 - Utiliser des mécanismes de déduplication des données

## Description

La déduplication est une technique de stockage de données, consistant à factoriser des séquences de données identiques afin d'économiser l'espace utilisé. 
En effet :
Chaque bloc de données entrant reçoit une valeur de hachage unique 
Si un nouveau bloc écrit sur le disque a la même valeur de hachage qu’un bloc existant, il est remplacé par un identifiant qui pointe vers le bloc de données existant
Cela économise l’espace disque que les blocs de données redondants auraient autrement utilisé dans le pool de stockage. La déduplication des données permet donc de minimiser les impacts environnementaux liés au stockage des données.

## Mise en œuvre

En tant qu'architecte logiciel, j'utilise une solution de déduplication des données, comme Veeam, pour réduire le stockage redondant et optimiser les ressources en éliminant les doublons.

## Tests d’acceptance

Une solution de déduplication des données est utilisée
