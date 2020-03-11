{
ligne = $0

# tant que la ligne se termine par \

while (ligne ~/\\$/) {

	#retrait de \
	sub(/\\$/,"",ligne)

	#lecture de la ligne suivante du flux
	getline


	#concatenation des 2 lignes
	ligne = ligne $0
}

	# quand la ligne est reconstituee, affichage
	print ligne
}

