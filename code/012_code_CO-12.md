---
code: CO-12
page-background: backgrounds/vincent2.jpg
sous-famille: Transverse
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# CO-12 - SQL - Éviter d’utiliser « EXECUTE IMMEDIATE »

## Description

EXECUTE IMMEDIATE prépare et exécute immédiatement un ordre SQL spécifié dynamiquement, sans récupérer les enregistrements du résultat. Les résultats doivent donc être recalculés à chaque fois qu’ils sont utilisés. Cela induit des consommations de ressources et donc des impacts environnementaux supplémentaires.

## Mise en œuvre

En tant que développeur, je remplace les instructions SQL dynamiques par des instructions statiques.

## Tests d’acceptance

La fonction SQL « EXECUTE IMMEDIATE » n’est pas utilisée.
