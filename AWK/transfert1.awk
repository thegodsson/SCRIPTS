

BEGIN {

	FS="|"
}


$3 ~ /^(7[578]|9[1-5])/ {
	printf ("%s|%s|%s|%s|01.%s\n",$1,$2,$3,$4,$5)

	#Saut a l'enregistrement suivant
	next
}


{
	printf ("%s|%s|%s|%s|99.%s\n",$1,$2,$3,$4,$5)
}

