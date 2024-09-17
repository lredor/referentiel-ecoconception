---
code: AR-16
page-background: backgrounds/vincent2.jpg
sous-famille: Réseau
responsable: Developpeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# AR-16 - Compresser les flux HTTP

## Description

La compression des flux HTTP est un moyen simple de réduire la bande passante utilisée.
Elle fonctionne de la manière suivante :

- Le serveur compresse les données (code HTML, CSS, JavaScript...)
- Les fichiers transitent par le réseau via HTTP
- Le navigateur décompresse à la volée les données avant de les interpréter

## Mise en œuvre

En tant que développeur, je :

- m’assurer que les ressources statiques CSS et JS soient minifiées (suppression des éléments de mise en page pour faciliter la lecture pour les développeurs, retours chariots, indentations). Des outils existent pour traiter cette minification au niveau du Studio ou à la fabrication
- configurer le serveur pour qu’il retourne un contenu zippé au navigateur, s’il le supporte

## Tests d’acceptance

Les points suivants sont controlés :

- La compression : Les entêtes de fichiers de type ASCII doivent contenir content-encoding "gzip" ou "br"
- La minification :

  - le contenu contient moins de 15 retours chariot
  - La minification du fichier donne un gain de poids supérieur à 10% du poids du fichier
