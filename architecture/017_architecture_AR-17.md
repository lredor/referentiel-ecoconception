---
code: AR-17
page-background: backgrounds/vincent2.jpg
sous-famille: Réseau
responsable: Architecte
benefice: Performance
bonne-pratique-essentielle: oui
---
# AR-17 -  Protocole de transport

## Description

Le protocole HTTP2 se base notamment sur :

- une représentation binaire des requêtes et réponses (plus efficient qu’HTTP1 qui se base sur une représentation textuelle)
- un mécanisme de compression des entêtes HTTP
- le multiplexage des échanges, permettant de n'utiliser qu'une seule connexion TCP avec le serveur (alors qu’HTTP1 génère des allers-retours entre le navigateur et le serveur pour chaque ressource)

Les gains en bande passante d’HTTP2, comparé à HTTP1, s’évaluent à plus de 50% sur les requêtes et de 1% à 15% sur les réponses, en fonction de la nature des échanges.


HTTP3 est disponible depuis 2019. Il est supporté par la plupart des navigateurs existants. Il repose sur le protocole de transport de données UDP*, et non TCP* comme c’est le cas pour HTTP2 et HTTP1. L’avantage du protocole UDP est que, tout en permettant d’assurer l’intégrité des données, il ne prévoit pas de contrôle des messages tel que TCP le fait, ce qui le rend bien plus performant.  

Les avantages d’HTTP3 sont, entre autres :

- Un temps de réponse plus rapide pour la première requête (en moyenne 12,6% plus rapide par rapport à HTTP2 d’après Cloudflare)
- La réduction de la congestion
- L’amélioration de la sécurité

D’une manière générale, HTTP3 offre dans la plus part des cas de meilleures performances qu’HTTP2 (et à minima des performances similaires).

## Mise en œuvre

- HTTP2 est supporté par les navigateurs depuis 2014
- HTTP2 se met en place au niveau du serveur, en installant un certificat SSL ou TLS (car tous les navigateurs l’imposent).
- Les principaux serveurs HTTP du marché ont déjà ajouté le support natif d’HTTP2 depuis 2014/2015. Mettre à jour, configurer et tester les serveurs pour prendre en charge HTTP2

A date, HTTP3 n'est pas supporté nativement par Apache et Nginx. HTTP3 peut néanmoins être utilisé via un patch.

## Tests d’acceptance

Le nombre de requêtes utilisant HTTP1 ou HTTP2 est égal à 0.
