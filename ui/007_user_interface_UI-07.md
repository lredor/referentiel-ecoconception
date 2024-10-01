---
code: UI-07
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Intégrateur + dev front
benefice: Performance
          Utilisabilité
---
# UI-07 - Arrêter la lecture des vidéos hors du cadre de visualisation

## Description

Les vidéos lancées par l'utilisateur peuvent au cours de la navigation ne plus être visibles sur la zone écran présentée à l'utilisateur. La poursuite de la diffusion de ces contenus devient inutile et entraîne une consommation de ressources (et donc un impact environnemental) non nécessaire, ils doivent donc être arrêtés.

## Mise en œuvre

1. **Ecrire une fonction qui récupère les vidéos et les stoppe si elles sont hors du cadre**

function checkScroll() {
var videos = document.getElementsByTagName("video");

function isInView(el) {
  var rect = el.getBoundingClientRect();           // absolute position of video element
  return !(rect.top > $(window).height() || rect.bottom < 0);   // visible?
}

for(const video of videos){
   if(isInView(video)){
        video.pause()
    }
  }
}
Cas d'une iframe Youtube :
Ajouter un paramètre enablejsapi=1 à l'url source de l'iframe.
Dans le JS, envoyer la commande pauseVideo lorsque l'iframe est hors du cadre :
iframeElement.contentWindow.postMessage('{"event":"command","func":"pauseVideo","args":""}', '*')

2. **Appeler cette fonction lors d'un scroll**

Exemple en javascript: window.addEventListener('scroll', checkScroll, false);
Exemple en jQuery: $(window).on('scroll', checkScroll);

## Tests d’acceptance

Lorsqu’un événement de scroll est observé, la fonction .pause() est appelée.
