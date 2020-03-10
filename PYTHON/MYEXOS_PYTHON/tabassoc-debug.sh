#!/usr/bin/python


def source():
	fichier=open("datas.txt", "r")
	liste1 = []
		
	for line in fichier:
		separateur = line.split("|")
		nom = separateur[0]
		cp = separateur[1]
		ville = separateur[2]
		#line = line.rstrip(' \n')
		liste1.append(ville)

	print("La liste 1 : ", liste1)

	liste2 = []
	for element in liste1:
		liste2.append(element.strip())

	print("La liste 2 : ", liste2)

	liste3 = []
	for element in liste2:
		resultat = (liste2.count(element))
		liste3.append(resultat)

	print("La liste 3 : ", liste3)

	cles = []
	for element in liste2:
		if element not in cles:
			cles.append(element)

	print("La liste nommé cles : ", cles)

	valeurs = []
	for element in liste3:
		if element not in valeurs:
			valeurs.append(element)

	print("La liste nommé valeurs : ", valeurs)

	liste6 = []
	liste6 = cles + valeurs

	print("La liste 6 , compose de la liste cles et la liste valeurs  : ", liste6 )
	

	dico1 = {}

	for keys in cles:
		for value in valeurs:
			dico1[keys] = value
			valeurs.remove(value)
			break

	print(str(dico1))

source()
