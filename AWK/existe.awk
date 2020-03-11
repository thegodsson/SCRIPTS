 BEGIN {  
         # tableau indice par nombre  
         tabInd[0] = "a"  
         tabInd[1] = "b"  
         tabInd[2] = "c"  
         # Lelement dindice "2" existe-t-il ?  
         indice=2  
         if (indice in tabInd) print("Indice " indice " existe ; 
valeur : "  tabInd[indice])  
         
         # tableau indice par chaines  
        tabCle["c1"] = "a"  
        tabCle["c2"] = "b"  
        tabCle["c3"] = "c"  
        # Lelement de cle "c3" existe-t-il ?  
        cle="c3"  
        if (cle in tabCle) print("Indice " cle " existe ;  
valeur : "  tabCle[cle])  
      }
