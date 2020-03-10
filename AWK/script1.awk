

#Section BEGIN

BEGIN {
	
	print "Dans la section BEGIN"
	FS="|"
	nb_38=0
	nb_89=0

}



#Premiere section intermediaire
#Traitement des clients localises dans l'isere

$3 ~ /^38/ {
	print "Isere : " , $1
	nb_38+=1
}

#Deuxieme section intermediaire
#Traitement des clients localises dans l'Yonne

$3 ~ /^89/ {
	print "Yonne : " , $1
	nb_89+=1
}

#Section End

END {

	print "Dans la section END"
	print "Nombre total d'enregistrements : " NR
	print "Nombre de clients localises dans l'Isere : " , nb_38
	print "Nombre de clients localises dans l'Yonne : " , nb_89
}



