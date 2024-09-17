---
code: CO-03
page-background: backgrounds/vincent2.jpg
sous-famille: CSS
responsable: Développeur
benefice: Performance
---
# CO-03 - Utiliser des sélecteurs CSS efficaces

## Description

Un sélecteur est une expression qui indique au navigateur à quelle entité HTML applique la règle CSS correspondante. Toute règle CSS commence par un sélecteur. CSS propose une grande diversité de sélecteurs (sélecteurs de type, de classe, d’ID, d’attributs, etc.), offrant ainsi une précision très fine dans la façon de cibler les éléments.
Afin de limiter l’impact environnemental généré par les sélecteurs, il est recommandé de privilégier les sélecteurs basés sur des ID ou des classes. En effet, ces sélecteurs permettent de filtrer très rapidement les éléments HTML, économisant ainsi des cycles CPU à la machine interprétant les règles et donc les impacts environnementaux.

## Mise en œuvre

En tant que développeur,
A la place de treeitem[mailfolder="true"] > treerow > treecell {…}
J’écris .treecell-mailfolder {…}

A la place de treehead > treerow > treecell {…}
j’écris .treecell-header {…}

## Tests d’acceptance

Le nombre de sélecteurs CSS qui n'utilisent ni d'id, ni de class et ni d'attribut est égal à 0.
