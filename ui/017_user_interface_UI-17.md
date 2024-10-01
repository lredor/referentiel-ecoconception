---
code: UI-17
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Editeur de contenu 
             UX/UI Designer, PO
benefice: Utilisabilité
---
# UI-17 - Minimiser le nombre d’images

## Description

Chaque image d’une page entraîne une consommation de ressources et donc un impact environnemental supplémentaire. Dès lors, il convient de minimiser le nombre d’images par page.
Pour commencer, il conviendra de supprimer toutes les images décoratives, c’est-à-dire n’apportant pas de valeur à l’utilisateur.
Une solution peut aussi être de réutiliser les images. Afficher les mêmes images au sein d’une même page permet de réduire le nombre d’images téléchargées sur la même page. Afficher les mêmes images  d’une page à l’autre permet de limiter le téléchargement d’images. En effet, une fois téléchargée, l’image est mise en cache. Si l’image apparaît de nouveau sur une page lors de la navigation, le navigateur pourra obtenir l’image directement dans le cache plutôt que sur le serveur d'origine, ce qui permet de ne pas la télécharger une deuxième fois.

## Mise en œuvre

La mesure de la valeur d’un élément peut être déterminée selon la règle des 3U (est-ce que l’élément est Utile, Utilisable, Utilisée ?). Ainsi, en tant qu’UX/UI Designer et Product Owner et avec le métier, nous appliquons la règle des 3U pour chaque élément que nous souhaitons ajouter à l’interface utilisateur. Si un élément ne répond pas à au moins un des trois critères des 3U, alors nous supprimons cet élément.
En tant qu’éditeur de contenus et UX/UI Designer, nous essayons au maximum de réutiliser les visuels entre les pages du service numérique auquel nous contribuons. Par exemple :

* Les pictogrammes peuvent être réutilisées sur les différentes pages
* Les images illustrant les articles, actualités ou encore les éléments d’une recherche (s’il y en a, cf bonne pratique) doivent être génériques afin de pouvoir être recyclées pour d’autres sujets

## Tests d’acceptance

* La règle des 3U a été appliquée pour vérifier que chaque élément de la page est utile, utilisé et utilisable
* Le nombre d’images décoratives par écran est inférieur ou égal à 13 (tout dépend de leur taille)
* 100% des images téléchargées sont affichées
