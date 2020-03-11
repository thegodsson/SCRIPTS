# Le caractere ":" en 1ere position permet de mieux gerer les  
       # options incorrectes 
       while getopts ":cxu:g:" option 
       do 
         case "$option" in 
           c) echo "Archivage" 
              ;; 
           x) echo "Extraction" 
              ;; 
          u) echo "Liste des utilisateurs a traiter: $OPTARG" 
             ;; 
          g) echo "Liste des groupes a traiter: $OPTARG" 
             ;; 
          :) echo "Loption $OPTARG requiert un argument - Bye" 
             exit 1 
             ;; 
          \?) echo "$OPTARG: OPTION INVALIDE - Bye" 
              exit 1 
              ;; 
                                                       
        esac 
      done 
      echo "Analyse des options terminee" 
      echo "Avant shift:" 
      echo "Liste des arguments: $*" 
      echo "Indice de la prochaine option a traiter: $OPTIND" 
      shift $((OPTIND-1))   
      echo "Apres shift:" 
      echo "Liste des arguments: $*" 

      exit 0
