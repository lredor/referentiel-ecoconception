---
code: AR-14
page-background: backgrounds/vincent2.jpg
sous-famille: Principes Architecture 
responsable: Ops produit
benefice: Performance
---
# AR-14 - Modifier le workload pour qu’il consomme des quantités de CPU de manière adaptée

## Description

Un workload désigne une quantité de traitement qu’un ordinateur doit effectuer à un moment donné. Modifier le workload pour qu’il marche avec des CPU et quantités de mémoire différents signifie modifier le nombre d’instances d’un conteneur. Cela permet d’améliorer les performances de calcul et donc d’optimiser la consommation énergétique et l’empreinte environnementale associée.

Lors de la phase de build, les Ops Produit réalisent un benchmark afin de déterminer le nombre de composants à mobiliser pour répondre au besoin métier.
Les Ops Produit mènent un travail d’optimisation et de profiling en build et en run afin de respecter les limites de CPU et de RAM imposées par Kubernetes.

| Workload            | Limites de ressources en prod               |
| ------------------- | ------------------------------------------- |
| Standard (non java) | CPU : 1000 m ; mémoire : 2Gi               |
| Java avec heap size | CPU : 1500 m ; mémoire : requête + 128 Mi |
| Weblogic SLDNG      | CPU : 2000 m ; mémoire : 1500 Mi           |
| Quarkus             | CPU : 750 m ; mémoire : 512 Mi             |

En tant qu’Ops Produit, lors du build, je réalise un benchmark des composants du service numérique. Je mène un travail de profiling avec Grafana (ou équivalent)  pour vérifier que les limites de ressources imposées par Kubernetes (ou équivalent) sont respectées et optimiser le service numérique lorsque nécessaire, par exemple en le divisant en plusieurs morceaux.

## Tests d’acceptance

- Un benchmark des composants du service numérique a été réalisé
- Un suivi de la consommation énergétique des capacités techniques est réalisé
