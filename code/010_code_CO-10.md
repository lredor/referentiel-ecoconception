---
code: CO-10
page-background: backgrounds/vincent2.jpg
sous-famille: Java
responsable: Développeur
benefice: Performance
---
# CO-10 - Ne pas copier des tableaux via des boucles Java for, while, do..while et foreach

## Description

Utiliser une boucle pour copier un tableau ou une partie d’un tableau rajoute des lignes de code qui auraient pu être évitées en utilisant des fonctions natives, naturellement optimisées par le langage. Ce code supplémentaire induit une consommation non nécessaire de ressources techniques, qui se traduit par une augmentation de l’empreinte environnementale du service numérique.

## Mise en œuvre

En tant que développeur, j’utilise les méthodes natives pour copier les tableaux :

* Si je veux copier un tableau dans un autre tableau, j’utilise la méthode **Arrays.copyOf**
* Si je veux copier une partie d’un tableau dans un autre tableau, j’utilise la méthode **System.arraycopy**
* Si je veux alimenter une liste à partir d’un tableau existent, j’utilise la méthode **Arrays.asList**. Des étapes supplémentaires sont à prévoir si une liste à taille variable est désirée

## Tests d’acceptance

Pour copier un tableau, l’une des méthodes suivantes a été utilisée : **Arrays.copyOf**, **System.arraycopy** ou **Arrays.asList**
