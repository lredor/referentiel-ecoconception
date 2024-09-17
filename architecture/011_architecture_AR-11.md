---
code: AR-11
page-background: backgrounds/vincent2.jpg
sous-famille: Principes Architecture 
responsable: Equipe produit
benefice: Environnement
---
# AR-11 - Privilégier une architecture Cloud native

## Description

Le Cloud native est une approche de développement logiciel dans laquelle les applications sont conçues pour être hébergées/utilisées sur le Cloud.

Les caractéristiques emblématiques d’une architecture Cloud native sont les suivantes  :

- Un service numérique repose sur des microservices individuels qui peuvent être rassemblés dans des conteneurs tels que Docker
- La communication entre les microservices est effectuée par des API standardisées
- Une culture Devops déployée qui facilite la collaboration entre développeurs et administrateurs système
- Une méthodologie agile appliquée aux projets de build/run des services numériques
- L’utilisation d’une plateforme d’hébergement Cloud (Microsoft Azure, AWS, Google Cloud, etc)
- L'existence d'une chaîne de CI/CD

Cette architecture garantit notamment la résilience, l’évolutivité et la réutilisabilité des systèmes développés et assure donc leur durabilité, pilier de l’écoconception.

## Mise en œuvre

En tant qu’équipe produit, lorsque je conçois un nouveau produit, je me base sur les [twelve factors](https://12factor.net/), liste des bonnes pratiques à appliquer pour mettre en place une architecture cloud native.
Des outils comme Cloud Suitability Analyzer me permettent de mesurer la maturité Cloud native d’un service numérique.

## Tests d’acceptance

Le nombre de mauvaises pratiques affiché par l’outil Cloud Suitability Analyzer est égal à 0.
