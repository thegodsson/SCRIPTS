BEGIN { 
         nomfic = "/tmp/fic.txt" 
         print "Ligne 1" >  nomfic 
         print "Ligne 2" >  nomfic 
         print "Ligne 3" >  nomfic 
         close(nomfic) 
       }
