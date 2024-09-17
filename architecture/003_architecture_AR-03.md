---
code: AR-03
page-background: backgrounds/vincent2.jpg
sous-famille: Données
responsable: Maitre d’ouvrage / chef de projet
benefice: Environnement
bonne-pratique-essentielle: oui
---
# AR-03 - Réutiliser les datasets

## Description

Un dataset (ou jeu de données) est un « container » qui stocke des données, du code ainsi que la documentation associée et qui est décrit par des métadonnées.
Souvent, les données nécessaires aux cas d’usages sont dupliquées dans des datasets. Or, différents cas d’usages peuvent nécessiter des données communes. Au lieu de recréer des datasets pour chaque cas d’usage et ainsi dupliquer les données, il faut réutiliser les datasets existants. La réutilisation de datasets peut concerner les datasets d’entrée d’un cas d’usage (CU) ou des datasets « enrichis » en cours de CU :

- **Réutilisation de datasets d’entrée**
Chaque cas d’usage est documenté par une fiche qui liste l’ensemble des tables nécessaires à sa réalisation. Ces CU sont passés en revue lors d'un Comité de Suivi des Cas d’Usage, qui peut détecter une adhérence entre des projets et ainsi les mettre en relation pour un partage des tables consommées en entrée.  
Afin d’éviter de nombreuses duplications et stockages inutiles, les tables du Datalake ne sont ni importées ni copiées, mais sont consultables en lecture. Seul le résultat des requêtes adressées est transporté et écrit dans le lac.

- **Réutilisation de datasets « enrichis »**
Dans un groupe de cas d’usages ayant un périmètre ou une finalité proche, l’un des CU peut avoir à utiliser un ou plusieurs dataset(s) généré(s) par un autre CU. Cette identification se fait souvent par connaissance de ces projets. 
Ces datasets peuvent aussi être facilement identifiables pour les CU accompagnés par le Datalab. En effet lors des formations, la fonction « Catalog » de Dataiku est mise en avant, permettant ainsi de visualiser l’ensemble des datasets des cas d’usage d’un groupe. 
Le partage de ces datasets est ensuite encadré afin de protéger et de sécuriser l’accès aux données. Ainsi, une demande doit être faite à l’équipe support aux dév du Datalab qui, une fois la légitimité vérifiée lors d’un CSCU, configure les accès à ces datasets.
Au-delà du seul aspect de partage d’un dataset unique, le partage de datasets enrichis induit une économie liée aux autres datasets intermédiaires et aux traitements nécessaires à son obtention.
A noter : la multiplication des datasets peut engendrer une redondance des données.

## Mise en œuvre

En tant que MOA ou chef de projet, selon les cas :

- Je documente les tables nécessaires à la réalisation d’un cas d’usage et je partage ces tables avec les projets ayant des adhérences identifiées en CSCU
- Je vérifie via le catalogue de donnée l'existance ou non des datasets de mes CU

## Tests d’acceptance

- Une fiche cas d’usage avec les tables consommées a été documentée pour revue CSCU
- Les datasets produits ont été partagés avec les cas d’usage d’un même groupe
- Les datasets existants des CU du groupe ont été vérifiés via le catalogue de donnée
