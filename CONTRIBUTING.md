# Guide de Contribution

Merci de votre intérêt pour contribuer à ce projet ! Voici quelques lignes directrices pour vous aider à démarrer.

## Comment Contribuer

1. **Fork** ce repository.
2. **Clone** le fork sur votre machine locale :

    ```bash
    git clone  https://git-scm.pole-emploi.intra/parasit/ecoconception/referentiel-opensource
    ```

3. **Créez une nouvelle branche** pour votre contribution :

    ```bash
    git checkout -b nom-de-votre-branche
    ```

4. Faites vos modifications et **committez** les changements :

    ```bash
    git commit -m "Description des modifications"
    ```

5. **Pushez** vos modifications sur votre fork :

    ```bash
    git push origin nom-de-votre-branche
    ```

6. **Créez une merge request** depuis votre branche vers la branche principale (main) de ce repository.

## Merge Requests

Lors de la création d'une merge request, veuillez vous assurer de :

1. Donner une description claire de vos modifications et de leur but.
2. Référencer les issues pertinentes en utilisant des mots-clés comme fixes #numéro-d'issue.
3. Assurer que votre branche est à jour avec la branche principale (main) :

    ```bash
    git fetch origin
    git checkout main
    git merge origin/main
    git checkout nom-de-votre-branche
    git rebase main
    ```

4. Résoudre tous les conflits de fusion qui pourraient survenir.
5. Passer tous les tests existants et ajouter des tests pour les nouvelles fonctionnalités.

## Normes de contribution

- Respecter les templates du projet
- Suivez les conventions de nommage du projet.
- Écrivez des commentaires clairs et concis.
- Verifier votre contribution avant de la soumettre.

## Problèmes (Issues)

Si vous rencontrez un bug ou avez une suggestion d'amélioration, veuillez ouvrir un ticket dans la section Issues.

## Examen des contribution (Review)

Toutes les contributions feront l'objet d'un examen par les mainteneurs du projet. Soyez prêt à apporter des modifications en fonction des retours.

## Communication

Si vous avez des questions ou avez besoin de discuter de quelque chose, vous pouvez nous contacter via la section Discussions ou par email à <vincent.rabah@francetravail.fr>.

## Licence

En contribuant à ce projet, vous acceptez que vos contributions soient sous la même licence que le projet. Voir le fichier LICENSE pour plus d'informations.

Merci encore pour votre aide et vos contributions !
