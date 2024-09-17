---
code: AR-10
page-background: backgrounds/vincent2.jpg
sous-famille: Données
responsable: DevOps
benefice: Environnement
---
# AR-10 - Centraliser les données de log, de trace et de monitoring 

## Description

Un log est une notification créée par un système à l’occasion d’un événement (tel qu’un échec, une erreur ou une transformation d’état, etc.). 
Une trace représente le trajet de bout en bout d’une requête dans un système distribué. Les traces permettent de comprendre les parcours utilisateur, trouver les goulots d’étranglement et identifier les erreurs afin qu’elles puissent être corrigées et optimisées.

Les données de monitoring mesurent les performances du service numérique (disponibilité du système, le temps de réponse, utilisation de la mémoire, consommation de temps CPU, bande passante, etc.)

La centralisation des données de logs, de traces et de monitoring consiste à rassembler chacune de ces catégories de données sur des plateformes dédiées. Toutes les informations deviennent ainsi accessibles via une interface unique, simple d’accès et d’exploitation. Ainsi, l’entreprise sera plus à même d’identifier rapidement les comportements anormaux, les accès non autorisés et les anomalies au niveau du service numérique, augmentant ainsi sa résilience et sa durabilité

## Mise en œuvre

En tant que devops, dans le processus de déploiement dans un environnement, je m’assure que ma chaine de déploiement CD paramètre correctement la centralisation des logs, traces et données de monitoring. 

## Tests d’acceptance

- Les logs sont systématiquement centralisés
- Les traces sont systématiquement centralisées sur les cartes d'appels 
- Les données de monitoring sont systématiquement centralisées sur  des outils comme AppDynamics et/ou Prometheus.
