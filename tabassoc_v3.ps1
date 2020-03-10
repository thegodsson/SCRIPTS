


$fichier = Get-Content -Path C:\Users\jmdfrancfort\Documents\POWERSHELL\datas.txt

$(foreach ($line in $fichier) {
    
    $ville = $line.split("|")[2]
    $tab_ville = @()

        foreach($i in $ville){        
            $tab_ville += $i
            }
          
         
            
        foreach($i in $tab_ville) {        
            $resultat = ($fichier | Select-String -Pattern $i -AllMatches).Matches.Count            
            $final = $i + " ==> " +  $resultat
            $final

            }
      
    
  
  #}) | Sort-Object| Get-Unique
  }) | Get-Unique
  #})
