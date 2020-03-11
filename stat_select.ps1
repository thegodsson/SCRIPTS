function effacer {
cls
}


function pause {

sleep 3
}




function source {



    $script:fichier = Get-Content -Path C:\Users\jmdfrancfort\Documents\POWERSHELL\eleves.txt 


    $script:classe_choisie = Read-Host "Entrer une classe"

          

    }




Function Extraction {

    source


    $fichier = $fichier
    $classe_choisie = $classe_choisie


     foreach($line in $fichier) {
     

        $separateur = "|"

        $nom = $line.split($separateur)[0]
        $classe = $line.split($separateur)[1]
        $notes = $line.split($separateur)[2]
    
    
      
        if ($classe_choisie -eq $classe)
        {

        Write-Host $nom $classe $notes
             
            
        }
        }

    pause
    effacer
      
            
              

}



Function Moyenne {

    source
    
    $fichier = $fichier

    $classe_choisie = $classe_choisie

    $somme = 0 
    $nbr_ligne = 0
    $moyenne = 0

    
     foreach($line in $fichier) {
     

        $separateur = "|"

        $nom = $line.split($separateur)[0]
        $classe = $line.split($separateur)[1]
        $notes = $line.split($separateur)[2]
         

        if ($classe_choisie -eq $classe)
        {
        $somme = $somme + $notes
        $nbr_ligne+=1
        $moyenne = $somme / $nbr_ligne
              
            }
            }

    #write-host "La somme des notes des eleves de $classe_choisie est : $somme"
    #write-host "Le nombre de ligne est de $nbr_ligne"
    write-host "La Moyenne des eleves de la classe de $classe_choisie est : $moyenne"
    pause
    effacer


}



while ($true)

{

$i++

		
	Write-host "1) Extraire classe"
	Write-host "2) Moyenne d'une classe"
    Write-host "3) Fin"

    
	$choix = read-host "Votre Choix"

	if ($choix -eq 1)

	{

	Extraction
   

	}


    elseif ($choix -eq 2)

    {

    Moyenne

    }



    
    elseif ($choix -eq 3)

    {
    Write-host "A revoir"
    break
    }

    else 
    {
    
    Write-Host "Choix non défini"
    }




}	   