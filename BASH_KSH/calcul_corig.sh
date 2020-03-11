#! /bin/bash

shopt -s extglob  #Inutile en ksh

function isNombre {

if [[ $1 = ?([+-])+([0-9]) ]] 
then

	return 0
fi
	return 1

}

function somme {
	typeset resultat=0
	for nb in $*
	do
		if isNombre $nb 
		then 
			(( resultat += $nb ))
		fi
	done
	echo $resultat
}

function produit {
	typeset resultat=1
	for nb in $*
	do
		if isNombre $nb
		then
			(( resultat *= $nb ))
		fi
	done
	echo  $resultat
}

if (( $# < 3 )) 
then
	#Envoi sur la sortie d'erreur standard
	echo "Usage : $0 {somme|produit} nb1 nb3 [ ...]" 1>&2 
	exit 1
fi

operation=$1
shift

case $operation in 
	produit|somme)
		res=$($operation $*)
		;;

	*)
		echo "$operation : Operation illegale"
		exit 1
		;;
esac
echo "Resultat : " $res
	
