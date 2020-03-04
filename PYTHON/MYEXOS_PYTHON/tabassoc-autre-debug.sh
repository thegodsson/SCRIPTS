#!/usr/bin/python


def source():
	fichier=open("datas.txt", "r")
	liste1 = []
		
	for line in fichier:
		separateur = line.split("|")
		nom = separateur[0]
		cp = separateur[1]
		ville = separateur[2]
		line = line.rstrip(' \n')
		liste1.append(ville)

	liste2 = []
	for element in liste1:
		liste2.append(element.strip())

	liste3 = []
	for element in liste2:
		resultat = (liste2.count(element))
		liste3.append(resultat)


	cles = []
	for element in liste2:
		if element not in cles:
			cles.append(element)

	valeurs = []
	for element in liste3:
		if element not in valeurs:
			valeurs.append(element)

	liste6 = []
	liste6 = cles + valeurs

	dico1 = {}

	for keys in cles:
		for value in valeurs:
			print("valeurs :", valeurs)
			dico1[keys] = value
			print("dico1[keys] : ", dico1[keys])
			valeurs.remove(value)
			print("valeurs :", valeurs)
			print("value :", value)
			break

	print(str(dico1))

source()
