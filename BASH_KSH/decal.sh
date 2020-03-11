 #! /bin/bash 
  # Affichage des variables avant decalage 
  echo "Avant shift" 
  echo "1er  argument \$1: $1" 
  echo "2eme argument \$2: $2" 
  echo "3eme argument \$3: $3" 
  echo "4eme argument \$4: $4" 
  echo "Tous les arguments \$*: $*" 
  echo -e "Nombre darguments \$#: $#\n" 
 # Sauvegarde du 1er argument dans la variable rep 
 rep=$1 
 # Decalage d1 cran a gauche 
 shift 
 # Affichage des variables apres decalage 
 echo -e "Apres shift\n" 
 echo "1er  argument \$1: $1" 
 echo "2eme argument \$2: $2" 
 echo "3eme argument \$3: $3" 
 echo "4eme argument \$4: $4" 
 echo "Tous les arguments \$*: $*" 
 echo "Nombre darguments \$#: $#" 
 # Changement de repertoire 
 cd $rep 
 # Traitement de chaque fichier contenu dans $* 
 for fic in $* 
 do 
         echo "Sauvegarde de $fic ..." 
 done 
