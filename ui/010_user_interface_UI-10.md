---
code: UI-10
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Performance
          Utilisabilité
---
# UI-10 - Désactiver l’autoplay des médias

## Description

Les contenus actifs mobilisent d’importantes ressources techniques pour fonctionner, en particulier les vidéos. En effet, les usages vidéos représentent 80% du flux mondial de données. L'activité de ces composants doit être lancée à la demande de l'utilisateur pour réduire la consommation d'énergie et donc d’éviter des impacts environnementaux inutiles.

## Mise en œuvre

En tant que développeur, lorsque je veux désactiver la lecture automatique des médias, plusieurs situations se présentent à moi :

**VIDEO :**

* Intégration d’une vidéo Youtube ou Vimeo

Dans le code `<iframe>` d’une vidéo Youtube ou Vimeo, la lecture automatique est désactivée par défaut. Je n’ai donc rien à faire.
Pour modifier une vidéo dont la lecture automatique a été activée, je supprime le paramètre optionnel autoplay.

* Intégration d’une vidéo importée de l'ordinateur ou hébergée sur un autre site web

L’élément HTML `<video>` intègre un contenu vidéo dans un document.  Pour désactiver la lecture automatique d’une vidéo, je n’utilise pas l’attribut autoplay dans le code HTML, ou le supprime si il est déjà présent.

**AUDIO :**

L’élément HTML `<audio>` intègre un contenu audio dans un document.
En tant que développeur, je désactive la lecture automatique d’un audio en :

* n’utilisant pas l’attribut autoplay lorsque j’écris le code HTML
* supprimant l’attribut autoplay si il est déjà présent dans le code HTML

## Tests d’acceptance

* L'attribut autoplay n'est pas présent dans les balises `<video>`
* L’attribut autoplay n'est pas présent ou prend la valeur 0 dans les balises `<iframe>`
* Il n'y a pas d'attribut `<autoplay>` dans la balise `<audio>`.
