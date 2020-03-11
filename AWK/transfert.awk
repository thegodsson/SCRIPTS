#Fonction qui fait passer le no de telephone de 8 a 10 chiffres

function transfert (cp , tel) {

	#Region parisienne

	if ( cp ~ /^(7[578]|9[1-5])/ )
		prefixe="01."

	else		#Autre region
		prefixe="99."

	#Les 2 valeurs sont concatenees
	return prefixe tel

	}

#Section BEGIN
BEGIN {
	FS="|"
}

#Section intermediaire
{
	newtel=transfert($3,$5)
	printf("%s|%s|%s|%s|%s\n",$1,$2,$3,$4,newtel);
}

