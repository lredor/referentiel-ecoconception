---
code: ST-18
title: Établir et respecter un budget environnemental
page-background: backgrounds/vincent2.jpg
sous-famille: Pilotage
responsable: Equipe Produit
benefice: Environnement
---
## Description :

De la même façon qu’un projet numérique est contraint par un budget financier ou un planning, il pourrait être contraint par un budget environnemental. Par exemple, des contraintes sur le poids des pages pourraient être imposées (en Mo).

## Mise en œuvre :

En tant qu’équipe produit, lors de la session de travail sur les indicateurs, j’établis un budget environnemental. Les différentes étapes de cet atelier sont les suivantes :

- Définir les conditions de connexion les plus difficiles pour l’usager et pour lesquelles la DSI souhaite que le service numérique puisse fonctionner (exemple : mauvaise connexion 3G)
- Décider le temps de chargement possible dans ces conditions (exemple : 6 secondes)
- Une fois ces critères définis, l’outil [PerformanceBudget](https://www.performancebudget.io/) renvoie le poids de page cible à atteindre. Si l’équipe trouve ce poids trop contraignant, des ajustements peuvent être réalisés (augmentation maximum à hauteur de 25% du budget)
- Pour obtenir un budget global pour le service numérique, il faut multiplier le budget obtenu pour une page par le nombre de pages du produit. On obtient ainsi un budget global qu’il est possible de répartir entre les différentes pages. Tout dépassement du budget doit être justifié (comparaison avec un site concurrent écoconçu, etc.)

*Par exemple, si je veux que chaque page du service puisse se charger en 6 secondes avec une mauvaise connexion 3G, l’outil PerformanceBudget préconise un budget de 573 ko par page.
Sachant que la page d’accueil la plus légère du site concurrent est Indeed et que son poids est 1285 ko, soit plus de 2 fois le budget recommandé, je peux me permettre d’augmenter le budget préconisé, dans la limite des 25%.
Admettons que je choisisse 25%, mon budget s’élève maintenant à 716 ko.
Supposons que le service numérique soit composé de 10 pages. Le budget global du service numérique est 7,16 Mo. Je peux choisir de répartir ce budget entre les différentes pages de mon service numérique. Par exemple; j’alloue davantage de budget à ma page d’accueil (ex : 1 Mo), qui est souvent plus lourde que les autres pages.*

## Tests d’acceptance :

- Un budget environnemental doit être défini et suivi avec l’outil préconisé (cf page 11)
- Chaque page créée doit respecter le budget environnemental défini
