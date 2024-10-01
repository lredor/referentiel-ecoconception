---
code: UI-21
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Performance
bonne-pratique-essentielle: oui
---
# UI-21 - Compresser et ajuster la résolution des images

## Description

Afin de réduire leur poids, les images peuvent être minifiées et compressées.

* Minifier un fichier consiste à supprimer les commentaires, les espaces inutiles et les sauts de ligne. En effet, ces éléments, qui aident à rendre le code plus lisible, augmentent la taille du fichier alors qu’ils sont ignorés par le navigateur. Seuls les fichiers SVG sont concernés par la minification.
* Compresser les images permet de réduire leur poids. Il faut toutefois veiller à ajuster le taux de compression en fonction de l’image considérée afin de ne pas altérer sa qualité.

## Mise en œuvre

En tant que développeur, une multitude d’outils sont à ma disposition pour optimiser des images, par exemple par l'utilisation de l'outil **ImageMagick :**

*magick convert -quality 70 strip image1.jpg image1_c.jpg
magick convert -quality 60 strip image1.jpg image1.webp
magick convert -quality 45 strip image1.jpg image1.avif*

On pourra ainsi proposer plusieurs formats d'images et le navigateur ne téléchargera que le plus efficient (attention l'ordre ci-dessous est important) :

```<picture>
 <source srcset="image1.avif" type="image/avif">
 <source srcset="image.1webp" type="image/webp">
 <img src="image1_c.jpg" alt="alternative de l'image" loading="lazy">
</picture>
```

Vous pouvez également l'utiliser dans le CSS :

```background:
      image-set(
        url("image.avif"),
        url("image.webp"),
        url("image.jpg")
      );
```

et pour les images SVG avec l'outil svgo:

*npm -ig svgo
svgo --quiet --precision 2 image.svg -o image1.svg*

## Tests d’acceptance

* Des outils de compression ont été utilisés pour ajuster la compression des images
* La résolution des images est inférieure ou égale à 72 dpi (pour le vérifier, regarder les propriétés des images ou utiliser [https://pixelcalculator.com/fr](https://pixelcalculator.com/fr))
* Si le SVG est supérieur à 40ko c’est que le format SVG n’est pas le plus adapté.
* Si on arrive pas à compresser le SVG avec l’outil SVGO c’est que l’on a encapsulé dedans une image au format Bitmap
