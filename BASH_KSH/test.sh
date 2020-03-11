#!/bin/bash


function user_exist {

echo "Entrer le nom d'un utilisateur : "
read user


if grep -q $user /etc/passwd

then
	return 0
fi
	return 1
}

while true
do

        echo "1) Recherche d'utilisateur"
	echo "2) Quitter"
	echo "-------------------------------"
	echo "Votre Choix : "

	read reponse


	case $reponse in

		1)
		
		if user_exist
		then
			echo "L'utilisateur $user, exite"
		else
			echo "L'utilisateur $user, n'existe pas"
		fi
		;;

		2)
		echo "Fin du programme"
		echo "Au revoir"
		exit 1
	esac
done


		


