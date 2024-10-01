---
code: UI-24
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Performance
          Utilisabilité
---
# UI-24 - Limiter les animations Javascript/CSS

## Description

Une animation est la visualisation d’un changement apporté à un objet ou un ensemble d’objets sur une période de temps donnée.
Les animations JavaScript/CSS peuvent être très coûteuses en termes de cycles CPU et de consommation mémoire car elles déclenchent toutes une action de type (re)paint/(re)ﬂow très coûteuse en ressources. 
Par ailleurs, les animations sont généralement dépendantes de caractéristiques techniques des terminaux et génèrent des incompatibilités qui poussent artificiellement au renouvellement des équipements. Les animations détournent aussi l'attention des utilisateurs. Pour ces raisons, il convient de limiter au maximum les animations.

## Mise en œuvre

* En tant qu'UX/UI, je limite les animations à celles qui apportent réellement de la valeur aux utilisateurs.
* En tant que développeur, dans la mesure du possible, je n’utilise des animations que lorsqu’elles apportent réellement de la valeur aux utilisateurs.

Si une animation est nécessaire, se limiter aux propriétés CSS3 **opacity et transform**, et aux fonctions associées **translate, rotate, scale de transform**. Ces deux propriétés sont automatiquement optimisées par le navigateur, et l’animation peut être prise en charge par le processeur graphique (GPU).

En Javascript, au lieu d'utiliser **setTimeOut() et setInterval()**, préférer la méthode native **requestAnimationFrame()** pour que le navigateur exécute l’animation au moment opportun. Cette méthode adapte la fréquence d'images au terminal de l'utilisateur.
Par ailleurs, chaque animation doit pouvoir être mise en pause par l’utilisateur.

## Tests d’acceptance

* L’apport de valeur de chaque animation a été démontré
* Chaque animation est implémentée de manière sobre (respect des guidelines du paragraphe
  «  mise en œuvre) »
