---
code: CO-11
page-background: backgrounds/vincent2.jpg
sous-famille: Transverse
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# CO-11 - SQL - Éviter d'utiliser SELECT * FROM

## Description

Bien souvent, seuls certains champs du tableau sont réellement nécessaires pour un cas d’usage. Cependant, une requête du type SELECT * récupère l’ensemble des données d’un tableau.  Ainsi, ce type de requêtes collecte souvent plus de champs de la base de données que ce dont le service numérique a réellement besoin pour fonctionner. Cela entraîne une augmentation du volume de données à déplacer du serveur de base de données vers le client, ce qui ralentit l'accès et augmente la charge des machines, tout en prenant plus de temps pour traverser le réseau. 
Dès lors, si les champs utiles sont connus, il est vivement recommandé de nommer les champs dans la requête et de détailler au maximum la requête pour récupérer un minimum d’informations.

## Mise en œuvre

En tant que développeur, à la place de :

SELECT * FROM clients;
J'écris :
SELECT raison_social, adresse, code_postal, telephone FROM clients;

Les clauses telles que WHERE, LIMIT ou encore LIKE par exemple peuvent aussi permettre d’affiner une requête.

## Tests d’acceptance

Le nombre d’occurrence de « SELECT * FROM » dans le code est égal à 0 sauf cas exceptionnel (par
exemple si une table contient peu de lignes et de colonnes).
