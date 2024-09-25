---
code: AR-18
page-background: backgrounds/vincent2.jpg
sous-famille: Réseau
responsable: Equipe produit
benefice: Performance
---
# AR-18 - Utiliser un protocole d'échange adapté au contenu transféré

## Description

Aujourd’hui, 3 technologies sont populaires pour mettre en place une API : REST, GraphQL et gRCP. 

REST (Representational state transfer) est l’architecture la plus utilisée aujourd’hui. Elle est basée sur les règles originelles du protocole HTTP. Son inconvénient principal est sa verbosité et donc l’impact environnemental que cela peut générer par rapport à l’utilisation d’une autre architecture.

GraphQL est un langage de requête de données qui permet aux clients de demander uniquement les données spécifiques dont ils ont besoin. Le principal avantage de GraphQL est d’optimiser les requêtes. En effet, GraphQL permet de filtrer les requêtes de façon très fine :

- Le client peut dynamiquement expliciter les informations qui l’intéressent
- L’ensemble des requêtes est centralisé en une seule et unique requête
Cela induit ainsi des temps de réponse plus court et une moindre consommation de ressources.

gRCP est un framework RPC (Remote procedure call) créé par Google. Le gRPC traite le transport de flux de données via HTTP/2, et les données sont sérialisées. De cette manière, les besoins en mémoire et donc les impacts environnementaux sont réduits. 


## Mise en œuvre

En tant qu’équipe produit, je choisis le protocole d’échange à utiliser en fonction de la solution à réaliser :

- GraphQL est un bon choix architectural si l’application et sa structure de donnée font appel à de nombreuses requêtes.
- Pour une communication rapide et transparente entre les services internes, gRPC est la meilleure option. Le gRCP est particulièrement adapté au sein d’interfaces (API) et de services complexes
- Pour des systèmes simples et/ou ne disposant pas de mécanisme de cache, REST sera plus adapté
