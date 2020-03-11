
# gawk > 4  
        
       BEGIN {  
               tab["A"] = 2  
               tab["B"] = 100   
               tab[100] = 9   
               tab[2] = 400   
         
               print "\ntab : ordre naturel : "  
               for ( cle in tab ) { printf("%15s:%20s\n",cle,tab[cle]) }  
         
               asort(tab,tab2,"@val_str_asc")  
              print "\nnb=asort(tab,tab2,\"@val_str_asc\") ;  
tab2 (tri lexico des valeurs) =>"  
              for ( cle in tab2 ){printf("%15s:%20s\n",cle,tab2[cle])}  
        
              asort(tab,tab3,"@val_num_asc")  
              print "\nnb=asort(tab,tab3,\"@val_num_asc\") ;  
tab3 (tri numerique des valeurs) =>"  
              for ( cle in tab3 ){printf("%15s:%20s\n",cle,tab3[cle])}  
      
              asorti(tab,tab4,"@ind_str_asc")  
              print "\nnb=asort(tab,tab4,\"@ind_str_asc\") ;  
tab4 (tri lexico des cles) =>"  
              for ( cle in tab4 ){printf("%15s:%20s\n",cle,tab4[cle])}  
      }

