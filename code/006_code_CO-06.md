---
code: CO-06
page-background: backgrounds/vincent2.jpg
sous-famille: Transverse
responsable: Développeur
benefice: Performance
---
# CO-06 - Ne pas réécrire les getter et setter natifs

## Description

La plupart des langages objet proposent des getter et des setter standards que le développeur n’a pas besoin d’écrire. Réécrire à sa manière les getter et setter standards rajoute des lignes de code qui auraient pu facilement être évitées. Cela allonge les temps de compilation et d’exécution de ces méthodes, qui sont généralement bien mieux optimisées par le langage que par le développeur.

## Mise en œuvre

En tant que développeur, j’utilise les méthodes natives get et set, et j’évite à tout prix de les réécrire. Des exemples sont présentés ci dessous :

```
class Car {
  constructor(name) {this.name = name;}
  get name() {return this._name;}
  set name(newName) {this._name = newName;}

  /* non native */
  getName() {return this._name;}
  setName() {return this.name;}}
let my_first_car = new Car(“Ferrari");

/* getter */
console.log('My car\'s name with non native getter : ', my_car.getName())  // non natif
console.log('My car\'s name with native getter : ', my_car.name)  // correct
console.log('My car\'s name : ', my_car._name)  // correct

/* setter */
my_car.setName("Mercedes"); // non natif
console.log('My car\'s name setted with non native getter : ', my_car.name)  // non natif

my_car.name = "Renault";
console.log('My car\'s name setted with native getter : ', my_car.name)  // natif
```

## Tests d’acceptance

Le nombre de getter et setter natifs réécrit est égal à 0.
