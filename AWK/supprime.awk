

 BEGIN {  
         # tableau indice par nombre  
         tabInd[0] = "a"  
         tabInd[1] = "b"  
         tabInd[2] = "c"  
         # Suppression de lelement dindice 1  
         delete tabInd[1]  
         for (indice in tabInd) {  
           printf("Indice %d => %s\n",indice,tabInd[indice])  
        }  
         
        # tableau indice par chaines  
        tabCle["c1"] = "a"  
        tabCle["c2"] = "b"  
        tabCle["c3"] = "c"  
        # Suppression de lelement de cle c2  
        delete tabCle["c2"]  
        for (cle in tabCle) {  
          printf("Cle %s => %s\n",cle,tabCle[cle])  
        }  
      }
