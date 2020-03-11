
BEGIN {

	nomfic = "/tmp/fic.txt"
	print "Ligne 1" > nomfic
	print "Ligne 2" > nomfic
	print "Ligne 3" > nomfic


	#Fermeture du fichier pour pouvoir le relire
	close(nomfic)

	while ((getline < nomfic) == 1){
		print		#affiche $0 par defaut
	}
}
