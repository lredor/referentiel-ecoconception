---
code: AR-15
page-background: backgrounds/vincent2.jpg
sous-famille: Réseau
responsable: Developpeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# AR-15 - Maximiser l’utilisation des caches HTTP

## Description

La mise en cache est un processus de stockage local des données afin que les requêtes futures relatives à ces dernières soient plus rapidement accessibles. Dans le cadre de l’écoconception, la mise en cache est particulièrement intéressante parce qu’elle permet notamment de réduire le volume de ressources nécessaire aux opérations répétitives.

## Mise en œuvre

En tant que développeur, je m’assurer que :

- Au niveau du livrable, les ressources statiques soient versionnées
- Au niveau du serveur d’application, les entêtes HTTP permettent aux mécanismes de cache de connaitre la durée de rétention de l’objet

## Tests d’acceptance

Vérifier que :

- Si le fichier est "versionné" : Est-ce que la ressource est de type nom_fichier.ext ou nom_fichier.[^.] [^.] [^.] [^.] [^.] [^.]^.ext
- Les entêtes de cache :
  - Si le fichier est « versionné », max-age doit être supérieur à 10 jours
  - Si le fichier n’est pas versionné, le max-age doit être inférieur à 900s
- Dans tous les cas, il ne doit pas y avoir d’entête « etag »
