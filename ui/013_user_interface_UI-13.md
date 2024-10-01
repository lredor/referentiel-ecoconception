---
code: UI-13
page-background: backgrounds/vincent2.jpg
sous-famille: Contenus
responsable: Développeur
benefice: Performance
---
# UI-13 - Limiter le poids et le format des fichiers que l’utilisateur doit téléverser

## Description

Les interactions sur le front end peuvent nécessiter des transferts de fichiers entre le poste utilisateur et les serveurs de traitement. Les formats et volumes de fichiers acceptés par le service numérique doivent être indiqués à l'utilisateur pour éviter d’induire une consommation (liée au transfert, stockage et traitement des fichiers) alors que le processus sera voué à l'échec si les fichiers ne respectent pas les formats et volumes attendus. La limitation du volume des fichiers est indispensable pour réduire l'impact environnemental lié à leur transfert.

## Mise en œuvre

En tant que développeur, je peux mettre en œuvre deux actions de manière conjointe :

* Indiquer à l’utilisateur la taille maximale et les formats acceptés par le service numérique
* Limiter la taille et les formats des fichiers à transmettre au niveau du formulaire HTML

Dans un élément `<form>`, un élément `<input>` dont l'attribut type vaut "file" permet à un utilisateur de sélectionner un ou plusieurs fichiers depuis son appareil et de les uploader vers un serveur via un formulaire ou grâce à du code JavaScript via l'API File.
L’attribut accept permet de définir les formats de fichiers acceptés. Un exemple de trame :

```<form>
    ...
    <input onchange="VerifyUploadSizeIsOK(this)" type="file" id="file-upload" 
     accept=".doc,.docx" />
    ...
</form>

La fonction Javascript suivante permet de limiter le poids des fichiers à transmettre : 

<script type="text/javascript">
function VerifyUploadSizeIsOK()
{  var UploadFieldID = "file-upload";
   var MaxSizeInBytes = 2097152;
   var fld = document.getElementById(UploadFieldID);
   if( fld.files && fld.files.length == 1 && fld.files[0].size > MaxSizeInBytes )
   {alert("The file size must be no more than " + parseInt(MaxSizeInBytes/1024/1024) + "MB");
      fld.value = '';
      return false;}
   return true;} // function VerifyUploadSizeIsOK()
</script>
```

## Tests d’acceptance

* Le poids et le format des fichiers à transmettre par l’utilisateur sont précisés
* L’utilisateur ne peut pas envoyer de fichier dans un format différent et à un poids supérieur à ce qui est spécifié
