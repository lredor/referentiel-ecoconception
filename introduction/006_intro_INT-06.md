---
code: INT-06
page-background: backgrounds/vincent2.jpg
---
# TABLEAU RÉCAPITULATIF DES MÉTRICS CLÉS SUR UN SERVICE


| Type de métrics                                           | Limite                                                                                                                                                      | Code BP |
| ---------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| Taille du DOM                                              | 600 max éléments par page                                                                                                                                 | ST-16   |
| Nombre de requêtes                                        | 40 max par page                                                                                                                                             | ST-17   |
| Taille des pages (Px)                                      | Mobile : entre 320 et 600 pixels (en mode portrait),<br /> Tablette : entre 600 et 1024 pixels (en mode portrait),<br /> Desktop : au delà de 1024 pixels. | UX-03   |
| Nombre de notification envoyées par le service (par jour) | < 3                                                                                                                                                         | UX-12   |
| Envoie des e-mail                                          | 1Mo < par mail                                                                                                                                              | UX - 13 |
| Maintien du site map à jour                               | 100% des pages stratégiques                                                                                                                                | UX-16   |
| Nombre d’éléments dans une liste                        | < 10                                                                                                                                                        | UI-02   |
| Nombre de médias par page                                 | 0                                                                                                                                                           | UI-04   |
| Durée max des vidéos par page                            | 2 min                                                                                                                                                       | UI-05   |
| Définition des vidéos                                    | 720p                                                                                                                                                        | UI-06   |
| Attribut autoplay des médias                              | Non présent dans les balises ``<video>``,``<iframe>``et dans la balise ``<audio>``                                                                         | UI-10   |
| Affichage de la durée des contenus médias                | Pour tous les audios et vidéos                                                                                                                             | UI-11   |
| Nombre d’image par page                                   | < 3 et 100% des images téléchargées sont affichées                                                                                                      | UI-17   |
| Format d’image                                            | Avif, Webp                                                                                                                                                  | UI-21   |
| Autocomplétion                                            | Le nombre de champs en autocomplétion**est inférieur à 20%**                                                                                       | UI-12   |
| Concaténer les fichiers CSS                               | Il y a au maximum**3 fichiers** CSS                                                                                                                   | CO-01   |
| Framework CSS                                              | Le nombre de frameworks utilisés**est inférieur ou égal à 1**                                                                                     | CO-02   |
| Requêtes SQL à l’intérieur d’une boucle               | 0                                                                                                                                                           | CO-13   |
| Variables locales                                          | Pas de variables globales                                                                                                                                   | CO-15   |
