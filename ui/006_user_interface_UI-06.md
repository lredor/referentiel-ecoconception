---
code: UI-06
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Editeurs de contenus
benefice: Performance
---
# UI-06 - Optimiser la définition des vidéos

## Description

La définition d’une image correspond au nombre de pixels qu’elle peut afficher. Le poids (en octets) d’une image se calcule en multipliant le nombre de pixels qui la composent par leur poids. Ainsi, plus le nombre de pixels est important, et donc plus la définition d’une image est haute, plus son poids est élevé. Or, chaque octet transféré ou stocké sollicite des terminaux et des infrastructures gourmandes en énergie.

La définition à choisir dépend de la taille de l’écran du terminal utilisateur et du contenu proposé. Une définition supérieure à 1080p n’est pas nécessaire : une définition de 720p offre un rendu suffisant sur la plupart des écrans. Ainsi, imposer une définition inférieure ou égale à 720p aux vidéos proposées sur les services numériques permettra de réduire l’empreinte environnementale liée à la consultation de celui-ci.

Le nombre d’images par seconde (framerate) et le nombre de bits par secondes (bitrate) influent aussi sur la taille et donc l’impact environnemental du fichier. La compression des vidéos permet d’ajuster ces deux paramètres.

Une multitude d’outils est disponible sur le marché pour ajuster la définition des vidéos et les compresser, par exemple [veed.io](https://www.veed.io/fr-FR/outils/compresser-video), [video2edit](https://www.video2edit.com/fr/compresser-video), [clideo](https://clideo.com/fr/compress-video), etc…

## Mise en œuvre

En tant qu’éditeur de contenus, j’ajuste la compression et la définition des vidéos que je publie aux moyens d’outils d’édition vidéo. 

Je teste ensuite la lecture des vidéos sur différents terminaux afin de vérifier que la qualité choisie est bien suffisante. Si ce n’est pas le cas, je réajuste les paramètres de la vidéo.

## Tests d’acceptance

* Le niveau de compression de la vidéo a été adapté en fonction de son usage
* La définition des vidéos ne dépasse pas 720p sauf exceptions
