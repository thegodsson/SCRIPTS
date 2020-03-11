#!/usr/bin/ksh

function pause {
sleep 3
}

function extract {
echo "Votre Choix : "
read reponse
grep -wq $reponse eleves.txt
if [[ $? != 0 ]]
	then echo "Non défini"
else
	grep -w $reponse eleves.txt
fi
}

function moyenne {
echo "Votre Choix : "
read reponse
grep -wq $reponse eleves.txt
if [[ $? != 0 ]]
	then echo "Non défini"
else

compt=0
for notes in `grep $reponse eleves.txt | awk -F"|" '{print $3}'`
do
((compt+=1))
((somme=$somme+$notes))
echo "Note : $notes"
done
#echo "Nombre de ligne : $compt"
#echo "La somme des notes est de : $somme"
MOYENNE=$(expr $somme / $compt)
echo "La moyenne de la classe de $reponse est de $MOYENNE"
fi
}
###Programe principal####

while true
do

	echo "#########################"
	echo "GESTION DES ELEVES"
	echo "#########################"

	PS3="Votre choix : "


	select item in "Extraire par classe" "Moyenne d'une classe" "Fin"
	do


		echo "Vous avez choisi $REPLY : $item "

		case "$REPLY" in

		1)
		extract
		pause
		clear
		break
		;;

	
		2)
	        moyenne	
		pause
		clear
		break
		;;
	
		3)
		echo "Fin ...."
		exit 0
		;;

		*)
		echo "NON DEFINIE ...."
		pause
		clear
		break
		;;
		esac

	done


done
	
