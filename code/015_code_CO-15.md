---
code: CO-15
page-background: backgrounds/vincent2.jpg
sous-famille: Transverse
responsable: Développeur
benefice: Performance
---
# CO-15 - Privilégier les variables locales

## Description

En informatique, les variables sont des symboles qui associent un nom à une valeur. Une variable globale est définie en dehors de toute fonction et est par conséquent accessible et partagée par toutes les fonctions. A contrario, une variable locale est définie à l'intérieur d'un bloc (en général d’une fonction) et a une durée de vie limitée à l’exécution du bloc (de fonction), elle est visible uniquement dans ce bloc, inconnue en dehors. 
En JavaScript, lorsqu’on fait appel à une variable globale, le moteur d’interprétation doit vérifier :

* qu’elle existe dans le scope actuel, dans celui du dessus, etc. ;
* que la variable dispose d’une valeur, etc.

Pour éviter toutes ces vérifications, il est souvent envisageable de passer les variables utiles en arguments des routines, les rendant locales. Ce procédé permet ainsi d’économiser du temps de calcul (cycles CPU), et donc les impacts environnementaux qui en découlent.

## Mise en œuvre

En tant que développeur, à la place de :

```
var global_variable = 0;
function foo(){
    global_variable = 0;
    for (var i=0; i<items.length; i++) {
        global_variable += items[i];
    }
}
J'écris :
function foo(){
    var local_variable = 0;
    for (var i=0, li=items.length; i<li; i++) {
        local_variable += items[i];
    }
    return local_variable;}
```

## Tests d’acceptance

Le nombre de variables globales utilisées dans le code est égal à 0.
