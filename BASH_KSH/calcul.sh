#!/bin/bash

shopt -s extglob

function isnombre { 
    if [[ $1 = ?([+-])+([0-9]) ]] 
    then
		return 0
    fi
		return 1

}

function somme {

	typeset resultat=0

	for nbr in $* 
	do

		if isnombre $nbr
		then
			(( resultat += $nbr ))
		fi
	done
	echo $resultat
} 
	
function produit {

	typeset resultat=1

	for nbr in $* 
	do

		if isnombre $nbr
		then
			(( resultat *= $nbr ))
		fi
	done
	echo $resultat
} 


if [[ $# < 3 ]]
then
	echo "Usage : $0 {somme|produit} nbr1 nbr2 ..." 1>&2
exit 1
fi

operation=$1
shift

case $operation in

	somme|produit)
	res=$($operation $*)
	;;

	*)
	echo "Non definie"
	;;

esac

echo "Resultat : " $res





