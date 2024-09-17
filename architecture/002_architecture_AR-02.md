---
code: AR-02
page-background: backgrounds/vincent2.jpg
sous-famille: Données
responsable: Maitre d’ouvrage / chef de projet
benefice: Environnement
bonne-pratique-essentielle: oui
---
# AR-02 - Vérifier l’existence des données avant de créer une structure de données ad hoc

## Description

Lors de l’étape de conception d’un projet numérique, une structure de données ad hoc est souvent  créée sans s’assurer que les données soient déjà disponibles par ailleurs. Cela induit une redondance de données et donc des impacts environnementaux supplémentaires qui auraient pu être évités en se questionnant sur la disponibilité ou non des données dans le panorama actuel.

## Mise en œuvre

Si les données existent déjà dans le panorama actuel, il est préférable de les réutiliser. Avant de créer une structure de données de toutes pièces, il y a plusieurs façons de vérifier leur disponibilité :

- L’équipe data doit consulter le catalogue de données. Il va offrir l’avantage de proposer une vue exhaustive des données du patrimoine de l’Etablissement, quelles que soient les sources. Il s’adosse à l’ensemble des dictionnaires de données (Lac, SISP…) pour apporter d’avantage d’information; ainsi qu’une approche sémantique, reflet des concepts métier manipulant ces données. Ainsi, la recherche de l’existence d’une donnée peut se faire simplement via le moteur de recherche qui intègre les objets tant applicatifs que fonctionnels et métier. Enfin, il permet d’identifier les points de contact, responsables des données.
- Consulter les dictionnaires de données, d’une approche plus technique que le catalogue.
- Questionner les architectes fonctionnels et applicatifs pour une approche organisationnelle des objets applicatifs.

## Tests d’acceptance

La disponibilité des données a été vérifiée dans le dictionnaire de données, le catalogue de données ou auprès d’un architecte