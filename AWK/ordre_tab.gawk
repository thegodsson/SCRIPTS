

# gawk >= 4  
         
       BEGIN {  
               tab["arbre"] = "tree"   
               tab["table"] = "table"   
               tab["maison"] = "house"  
         
               print "Ordre interne : "  
               for ( motFrancais in tab) {  
                 print motFrancais " : " tab[motFrancais]  
              }  
         
              print "\nTri croissant par cle alphanumerique : " 
              PROCINFO["sorted_in"] = "@ind_str_asc"  
         
              for ( motFrancais in tab) {  
                print motFrancais " : " tab[motFrancais]  
              }  
              
              print "\nTri croissant par valeur : "  
              PROCINFO["sorted_in"] = "@val_str_asc"  
         
              for ( motFrancais in tab) {  
                print motFrancais " : " tab[motFrancais]  
              }  
      }

