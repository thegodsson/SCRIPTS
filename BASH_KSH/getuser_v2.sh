#!/bin/bash
# Le caractere ":" en 1ere position permet de mieux gerer les  
       # options incorrectes 
       while getopts ":cxu:g:" option 
       do 
         case "$option" in 
           c) echo "Archivage"                       
              echo "Indice de la prochaine option a traiter :  $OPTIND" 
              ;; 
           x) echo "Extraction" 
             echo "Indice de la prochaine option a traiter :  $OPTIND" 
             ;; 
          u) echo "Liste des utilisateurs a traiter: $OPTARG" 
             echo "Indice de la prochaine option a traiter :  $OPTIND" 
             ;; 
          g) echo "Liste des groupes a traiter: $OPTARG" 
             echo "Indice de la prochaine option a traiter :  $OPTIND" 
             ;; 
          \?) echo "$OPTARG: OPTION INVALIDE - Bye" 
              exit 1 
              ;; 
        esac 
      done 
      echo "Analyse des options terminee" 
      exit 0 
