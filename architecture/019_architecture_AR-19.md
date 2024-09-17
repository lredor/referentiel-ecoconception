---
code: AR-19
page-background: backgrounds/vincent2.jpg
sous-famille: Données
responsable: Data scientist / chef de projet / développeur, métier
benefice: Environnement
---
# AR-19 - Limiter les données stockées

## Description

Les données génèrent des impacts environnementaux tout au long de leur cycle de vie. En effet, les données mobilisent toute une infrastructure pour leur traitement et leur stockage. Cette infrastructure nécessite d’être hébergée, alimentée électriquement, refroidie et sécurisée. Ainsi, réduire la quantité de données à stocker permet de diminuer les impacts environnementaux liés à ces activités.

## Mise en œuvre

En tant que développeur, data scientist, collaborateur côté métier ou encore chef de projet, je réduis le volume de données stockées au nécessaire en :

**Stockant le minimum de données possible** :

- Je ne garde que les données susceptibles de servir à un cas d’usage présent ou futur
- Je ne sauvegarde pas les données faciles à recréer
- Je supervise la taille des espaces de stockage

**Optimisant les données stockées** :

- J'élimine les doublons
- Je supprime ou j'archive les données obsolètes (ex : une donnée peut être rendue obsolète par la récolte d’une nouvelle donnée)
- Je vérifie que les sauvegardes peuvent être restaurées

## Tests d’acceptance

- Seules les données utiles sont stockées
- Un nettoyage des données est effectué de manière régulière
