---
code: AR-12
page-background: backgrounds/vincent2.jpg
sous-famille: Principes Architecture 
responsable: Architecte / équipe de run
benefice: Environnement / Performance / Coûts
---
# AR-12 - Opter pour une architecture capable de passer à l'échelle automatiquement

## Description

Dans la plupart des cas la charge subie par une application n'est pas constante au cours du temps. Par exemple il peut n'y avoir que peu, voire pas du tout d'utilisateurs connectés la nuit. Dans ce cas, il n'est pas nécessaire d'utiliser des infrastructures techniques aussi importantes aux heures creuses qu'aux heures de plus forte demande.

L’autoscaling ou « mise à l’échelle automatique » est l’allocation ou la désallocation dynamique des ressources matérielles en fonction de la charge utilisateur : des ressources sont ajoutées lorsque l’activité s’intensifie et elles sont retirées lorsqu’elle diminue. C’est un moyen rapide et simple d’optimiser les performances, les coûts et l’empreinte environnementale d’un service numérique.

Deux approches sont envisageables en cas de sur-approvisionnement ou de sous-approvisionnement :

- **Vertical scaling** : Modification des capacités d’une ressource (ex: ajout de CPU ou de RAM)
- **Horizontal scaling** : Ajout ou diminution des instances d’une ressource

Un système d’autoscaling est composé :

- d’un **système de monitoring**, qui fournit des informations sur la charge utilisateur et l’état de l’application (nombre de sessions utilisateur actuelles, utilisation du processeur, etc.)
- d’un **service de dimensionnement**, qui planifie la mise à l’échelle des ressources 
- d’un **service de load balancing**, qui répartit la charge de travail entre les ressources

## Mise en œuvre

La mise à l’échelle automatique des ressources peut être mise en œuvre de différentes manières, notamment :

- par les **fournisseurs de Cloud** comme Google, Microsoft ou AWS, qui proposent des services d’autoscaling, mais cela nécessite d’héberger ses données dans le Cloud
- via l’outil d’orchestration **Kubernetes**, qui fournit une fonctionnalité d’autoscaling.