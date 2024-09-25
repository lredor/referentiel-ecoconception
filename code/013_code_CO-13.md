---
code: CO-13
page-background: backgrounds/vincent2.jpg
sous-famille: Transverse
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# CO-13 - SQL - Eviter de faire des requêtes SQL à l’intérieur d’une boucle

## Description

Les requêtes SQL à l’intérieur d’une boucle posent des problèmes importants de performance, et ce d’autant plus si le(s) serveur(s) SQL n’est (ne sont) pas sur la machine locale. En effet, ces serveurs sont optimisés pour traiter plusieurs sélections, insertions ou modifications dans une seule requête ou une seule transaction. Ainsi, envoyer un grand nombre de petites requêtes constitue le meilleur moyen de consommer inutilement des cycles CPU, de la mémoire vive et de la bande passante, et ainsi induire des impacts environnementaux non négligeables. Cela peut par ailleurs saturer un serveur.

## Mise en œuvre

En tant que développeur, à la place d'écrire :

```
for (var user in userList) {
  const query = "INSERT INTO users (first_name,last_name) VALUES("+user.first_name+","+user.last_name+")";
  const res = db.exec(query);
}
```

J'écris :

```
var sql = "INSERT INTO Test (first_name, last_name) VALUES ?";
var values = [
    ['demian', 'smith'],
    ['john', 'doe'],
    ['mark', 'lee'],
    ['pete', 'buler']
];
conn.query(sql, [values], function(err) {
    if (err) throw err;
    conn.end();
});
```

## Tests d’acceptance

Le nombre de requêtes SQL à l’intérieur d’une boucle est égal à 0.
