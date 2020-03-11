

BEGIN {


#Cle unique

tab[0,"nom"] = "Petit"
tab[0,"cp"] = "75001"
tab[1,"nom"] = "Dupont"
tab[1,"cp"] = "89000"



for (i=0; i<=1; i++) {

	print "Indice " i ": "
	print "Nom : " tab[i,"nom"]
	print "CP : " tab[i,"cp"]
	print "----------"
}


for (cle in tab) {
	print "Cle : --" cle "-- Valeur => " tab[cle]
}

}
