---
code: UX-15
page-background: backgrounds/vincent2.jpg
sous-famille: Service tiers
responsable: Equipe produit
benefice: Performance
          Environnement
---
# UX-15 - Désactiver les services tiers non nécessaires et faciliter leur utilisation

## Description

Les services tiers sont des services proposés par des fournisseurs externes. Ex : publicités, analytics, tracking, contenus (image, texte, vidéo, etc.), chat, fonctionnalités avancées, scripts d’A/B testing…

Chaque service tiers supplémentaire alourdit le poids d’une page et bien souvent ils ne sont pas tous nécessaires au bon fonctionnement d’une page. De plus certains éditeurs de services numériques rendent les processus liés compliqués et décourageant pour les utilisateurs (obligation de téléchargement etc…). Permettre de charger ces contenus qu’à la demande explicite de l'utilisateur et faciliter les procédures permet d’optimiser la consommation de ressources liée à la consultation d’une page et ainsi minimiser l’empreinte environnementale induite.

Ce critère rejoint une des obligations du RGPD sur la demande de consentement avant de charger du contenu tiers.

## Mise en œuvre

En tant qu’équipe produit :

* J’identifie les services tiers utilisés par le service numérique en consultant un outil d’analyse de site tel que Pingdom, GTmetrix, WebPageTest, ou encore Chrome Devtools.
* Je détermine ensuite les services tiers non nécessaires au fonctionnement du service numérique en analysant les besoins des utilisateurs.
* Enfin, je fais en sorte de ne charger que les services tiers indispensables aux utilisateurs et leur permet de déclencher le chargement des services tiers non essentiels lorsqu’ils le souhaitent.
* Je mets en place un mécanisme de consentement facile à refuser pour l’utilisateur, ex :
* J’affiche clairement un bouton permettant de refuser les cookies
* Je minimise le nombre d’étapes permettant de refuser les cookies
* Je ne mets pas en avant le bouton « accepter les cookies » de sorte à attirer le regard de l’utilisateur dessus et le faire accepter les cookies sans qu’il en ait eu l’intention

## Tests d’acceptance

* Une analyse des services tiers utilisés par le service numérique a été réalisée
* Seuls les services tiers identifiés comme indispensables sont chargés
* L’utilisateur a la possibilité de charger les services tiers non essentiels s’il le souhaite
* L’utilisateur peut refuser en une action simple le mécanisme de consentement
