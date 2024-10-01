---
code: UI-18
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeurs et intégrateurs
benefice: Utilisabilité
---
# UI-18 - Préférer le CSS aux images pour les éléments d’interface

## Description

Le poids d’une feuille de styles est bien plus faible qu’une image, surtout si la feuille de style est compressée. De plus, l’appel d’une feuille de styles ne génère qu’une seule requête HTTP, contre un grand nombre si l’on emploie beaucoup d’images (une requête HTTP pour chaque image). Le poids transféré et le nombre de requêtes influant fortement sur l’empreinte environnementale d’une page, il conviendra d’utiliser les propriétés CSS à la place d’images pour réaliser l’interface.

## Mise en œuvre

En tant que développeur/intégrateur, je maximise l’utilisation de propriétés CSS à la place d’utiliser des images (ex : arrières plans)

## Tests d’acceptance

Le nombre d’images qui auraient pu être remplacées par du CSS est égal à 0
