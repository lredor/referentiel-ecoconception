---
code: AR-21
page-background: backgrounds/vincent2.jpg
sous-famille: Principes d’architecture
responsable: Equipe produit
benefice: Performance
---

# AR-21 - Utiliser la CI/CD de manière responsable

## Description

L’adoption du Devops peut entrainer une consommation de ressources largement supérieure au  besoin si elle n’est pas encadrée. Optimiser l’utilisation des ressources informatiques est nécessaire afin de limiter leur consommation.

## Mise en œuvre

En tant que devops, plusieurs bonnes pratiques me permettent d’utiliser la CI/CD de manière responsable :

- Optimiser la taille des images Docker (fichier utilisé pour exécuter du code dans un conteneur Docker) utilisées afin de limiter les transits réseaux, le stockage et la latence lors du déploiement d’une nouvelle instance d’image. Plusieurs techniques permettent de réduire la taille des images Docker. Cette bonne pratique est préconisée dans TMJ, un mode opératoire a même été rédigé à ce sujet
- Mettre en cache les fichiers et dossiers tout au long de la CI/CD afin d’éviter de retélécharger les fichiers à chaque build.
- Surveiller la durée des jobs, leur nombre, et le trafic réseau et les événements dans Grafana par exemple et surveiller vos services afin de détecter et remédier au plus tôt aux défauts fonctionnels, bugs et surconsommations d’énergie, et ainsi améliorer l’efficience des workflows
Privilégier les forges mutualisées (solutions permettant de centraliser les informations d’un projet et intègrant un processus d’intégration continue permettant de compiler, tester et déployer un ou plusieurs projets) -par exemple, l’outil Concourse peut être utilisé afin de mutualiser et donc d’augmenter le taux d’utilisation des serveurs. D’autres outils sont utilisés : GCLp, Proven, ARA, Gitlab CI et Jenkins
- Assurer une cohérence globale à l’ensemble des outils de manière à optimiser l’espace disque.

## Tests d’acceptance

- La taille des images Docker est optimisée
- Un mécanisme de mise en cache optimisé est intégré à la CI/CD
- Les métriques de pilotage sont surveillées quotidiennement
- Les données sont supprimées dès qu’elles deviennent obsolètes
