#!/bin/bash

while getopts "cxu:g:" option
do

	echo "getopts a trouve l'option $option"
	
	case "$option" in

		c) echo "Archivage"
		   echo "Indice de la prochaine option a traiter : $OPTIND"
			;;


		x) echo "Extraction"
		   echo "Indice de la prochaine option a traiter : $OPTIND"
		   ;;


		u) echo "Liste des utilisateurs a traiter: $OPTARG"
		   echo "Indice de la prochaine option a traiter : $OPTIND"
		   ;;


		g) echo "Liste des groupes a traiter: $OPTARG"
		   echo "Indice de la prochaine option a traiter : $OPTIND"
		   ;;


	esac

done
echo "Analyse des options terminee"
exit 0
		

