---
code: UI-12
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: PO et UX/UI designer
benefice: Environnement
---
# UI-12 - Utiliser l’autocomplétion de façon responsable

## Description

L'autocomplétion est une fonctionnalité très répandue consistant à suggérer à l'utilisateur des résultats correspondant à sa recherche pendant sa saisie. Une requête au serveur va être envoyée à chaque caractère saisi pour récupérer les résultats correspondants. Or, bien souvent l’utilisateur sait ce qu’il veut rechercher.
Remplacer la complétion automatique par une alternative induisant moins de requêtes permet de limiter l’impact général de la page et du service.

## Mise en œuvre

En tant que PO et UX/UI Designer, j’évite le recours à l’autocomplétion et privilégie plutôt les techniques d’aide existantes (prévention des erreurs, exemples, format de saisie, liste déroulante, etc.).
Si l’usage de l’autocomplétion reste pertinent dans le contexte du projet, il est également possible de limiter ses impacts :

* Ajouter un délai de quelque dixièmes de secondes entre l'ajout d'un caractère et la requête : cela permet de ne pas déclencher de requête si l'utilisateur n'a pas terminé sa saisie
* Limiter le nombre de résultats affichés par l'autocomplétion, priorisés par une note de pertinence
* Fixer un nombre de caractères minimal avant de chercher à compléter
* Si la taille de la base de données le permet, l'inclure dans le code html ou dans le local storage et effectuer l'autocomplétion côté client
* Mettre en cache les résultats des recherches avec pour clef la chaîne saisie pour moins solliciter la base de données

## Tests d’acceptance

Le nombre de champs en autocomplétion **est inférieur à 20%**
