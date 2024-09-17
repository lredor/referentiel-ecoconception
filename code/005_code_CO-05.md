---
code: CO-05
page-background: backgrounds/vincent2.jpg
sous-famille: CSS
responsable: Développeur
benefice: Environnement
---
# CO-05 - DOM - Modifier plusieurs propriétés CSS en une seule fois

## Description

Lorsque le navigateur reçoit la page HTML, il propose en 1ère intention une
Le repaint est le changement d’apparence d’un élément du DOM (Document Object Model), tandis que le reﬂow est le changement/recalcul de la position des éléments dans le DOM. Ces deux opérations sont coûteuses en ressources énergétiques, notamment en cycles CPU : il faut donc éviter de les déclencher.
Pour limiter le nombre de repaint/reﬂow, il est conseillé de ne pas modifier des propriétés une à une. Préférer l’ajout/la suppression de classes CSS, ce qui permet de modifier en une seule fois plusieurs propriétés, tout en ne générant qu’un repaint/reﬂow.

## Mise en œuvre

En tant que développeur, je favorise ce type d’écriture :

```
<style>
    .in-error { color: red;
        font-weight: bold;}
</style>
<script>
    $el.bind('error', function () {
        $el.addClass('in-error');});
    $el.bind('running'), function () {
        $el.removeClass('in-error');};
</script>.
```

## Tests d’acceptance

Le nombre de déclarations CSS pouvant être regroupées en une seule (margin, padding, ...) n'utilisant pas la version d’écriture courte est égal à 0
