#!/usr/bin/ksh

function users_connect {

for users in `who | awk -F" " '{print $1}'`
do
	echo $users
done
}

function disk_space {
df -h / | awk -F" " '{print $4}' | tail -1

}

function pause {
sleep 3
}


while true
do

	echo "- 0 - Fin"
	echo "- 1 - Afficher la liste des utilisateurs connectes"
	echo "- 2 - Afficher l'espace disque disponible"
	
	echo "#########################################"
	echo "#########################################"
	echo "#########################################"


	echo "Votre choix : "
        read choix


	case $choix in


	0) 
	echo "Sortie du programme"
	echo "Au revoir"
	exit 0
	;;

	1)
	echo "Liste des utilisateur connecte : "
	users_connect
	pause
	clear
	continue
	;;

	2)
	echo "Espace disque disponible : "
	disk_space
	pause
	clear
	continue
	;;

	*)
	echo "Le choix que vous avez fait est non défini, retour au menu"
	pause
	clear
	continue

	esac
done
	










	





