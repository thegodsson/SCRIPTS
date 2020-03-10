#!/usr/bin/ksh

#####FONCTIONS#########

function balaye { 

find ~ -type f -size 0 -ok rm {} \;

}

function pas_despace {

seuil=$(df -h / | awk -F" " '{print $5}' | tr -d [A-Za-z] | tail -1)

#if [[ $seuil == "80%" ]] || [[ $seuil > "80%" ]]
if [[ $seuil = "80%" ]] || [[ $seuil < "80%" ]]
	then
	return 0
fi
	return 1
#then
#echo "Taux d'occupation du SF racine : DANGER DANGER DANGER !!!"
#else
#echo "Taux d'occupation du SF racine : NORMAL"
#fi
}

function pause {
sleep 3
}



#####PROGRAMME PRINCIPAL#########

while true
do

	echo "0 - Fin"
	echo "1 - Supprimer les fichiers de taille 0 sous mon répertoire d'acceuil"
	echo "2 - Controller l'espace disque du SF racine"

	echo "###########################################"
	echo "###########################################"
	echo "###########################################"

	echo "Votre choix : "

	read choix
	
	case $choix in

	0) 
	echo "Fin du Programme"
	echo "Au revoir"
	exit 0
	;;

	1)
	echo "SUPPRESSION"
	balaye
	pause
	clear
	continue
	;;

	2)
	if  pas_despace
		then echo "Taux d'occupation du SF racine : NORMAL"
	else
		echo "DANGER DANGER DANGER !!!"
	fi
	pause
	clear
	continue
	;;

	*)
	echo "NON DEFINIE"
	pause
	clear
	continue
	;;
	
	esac
done













	

	
	
	
	

	

	
