---
code: UI-08
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Performance
          Utilisabilité
---
# UI-08 - Ne pas jouer les vidéos en boucle

## Description

Les contenus actifs nécessitent des ressources techniques, et donc une consommation d’énergie pour fonctionner.
Les clips musicaux ont tendance à être lus à plusieurs reprises par les utilisateurs. C’est rarement le cas pour les contenus informatifs. Afin d’éviter un gaspillage d’énergie et donc induire des impacts environnementaux supplémentaires sans aucune finalité, une vidéo ne doit pas recommencer au début une fois que sa lecture est terminée.

## Mise en œuvre

En tant que développeur, lorsque je veux désactiver la lecture en boucle des vidéos, plusieurs situations se présentent à moi :

* **Intégration d’une vidéo Youtube**

Dans le code `<iframe>` d’une vidéo Youtube, la lecture en boucle est désactivée par défaut.
Pour modifier une vidéo dont la lecture en boucle a été activée, je supprime le paramètre optionnel loop.

* **Intégration d’une vidéo hébergée sur un autre site web**

L’élément HTML `<video>` intègre un contenu vidéo dans un document. Pour désactiver la lecture en boucle d’une vidéo, je n’utilise pas l’attribut loop dans le code HTML, ou je le supprime si il est déjà présent.

## Tests d’acceptance

L'attribut loop n'est pas utilisé.
