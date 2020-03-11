 #! /bin/awk  
 
       BEGIN{ 
         # Lire le fichier agenda.txt 
         while (1) { 
           # Saisie du nom 
           printf "Rechercher le nom : " 
 
           # Si erreur ou fin de fichier (ctrl d) fin du traitement 
           if ((getline nom < "-" ) != 1) break 
 
           # Si aucun nom saisi, nouvelle demande de saisie 
          if (length(nom) == 0) continue  
 
          # Boucle de lecture du fichier agenda 
          trouve="false" 
          while ((getline < "agenda.txt") == 1) { 
            # Recherche insensible a la casse 
            if (tolower($1) == tolower(nom)) {  
              trouve = "true"  
              print $0  
              break 
            } 
          } 
          if (trouve == "false")  print nom , "nest pas dans lagenda." 
        } 
        print "\nBye" 
      }
