---
code: ST-13
title: Suivre les métriques fournies par les Core Web Vitals
page-background: backgrounds/vincent2.jpg
sous-famille: Pilotage
responsable: Développeur + / référenceur SEO
benefice: Performance
---
## Description :

Les métriques de performance et de consommation d’un service numérique permettent d’identifier au plus tôt les problèmes (lenteur, surconsommation, etc.) liés à une fonctionnalité.
Les Core Web Vitals, ou Signaux Web Essentiels, sont 4 indicateurs définis par Google et mesurant la performance d’une page en fonction de données d'utilisation réelles :

- LCP (Largest Contentful Paint) : temps nécessaire pour afficher le plus grand élément visible.
- FID (First Input Delay) : temps nécessaire pour que la page réponde aux actions des utilisateurs.
- CLS (Cumulative Layout Shift) : fréquence à laquelle les utilisateurs subissent des changements de mise en page inattendus.
- INP (interaction to Next Paint) : réactivité globale d’une page aux interactions des utilisateurs en observant le délai pour répondre à chacune d’entre elle au cours d’une visite sur la page

Les standards définis par Google sont les suivants :

|     | Bon     | Amelioration nécessaire | Médiocre |
| :-- | :------ | ------------------------ | --------- |
| LCP | <2,5s   | <=4s                     | >4s       |
| FID | <100ms  | <=300ms                  | >300ms    |
| CLS | <?      | <=0,25                   | >0,25     |
| INP | <=200ms | <= 500ms                 | >500ms    |

Pour en savoir plus, se référer à la [documentation Google associée](https://support.google.com/webmasters/answer/9205520?#status_explanation).

## Mise en œuvre :

En tant que développeur, plusieurs outils sont à ma disposition pour surveiller les Core Web Vitals, par exemple la [Google Search Console](https://search.google.com/search-console/about) ou encore l’outil [WebPageTest](https://www.webpagetest.org/). Cet outil alimente un dashboard qui me permet de suivre les Core Web Vitals du service tout au long de son cycle de vie.

## Tests d’acceptance :

Les Core Web Vitals sont suivis tout au long du cycle de vie du service numérique

- Le LCP est inférieur ou égal à 4 secondes, sinon, une alerte est remontée
- Le FID est inférieur ou égal à 300 millisecondes, sinon, une alerte est remontée
- Le CLS est inférieur ou égal à 0,25, sinon, une alerte est remontée
- Le INP est inférieur ou égal à 500 milisecondes, sinon, une alerte est remontée
