#!/usr/bin/python


def source():

	fichier=open("eleves.txt", "r")
	dico1={}
	classe_choisie = input("Entrer une Classe : ")

	for line in fichier:
		separateur = line.split("|")
		nom=separateur[0]
		classe=separateur[1]
		moyenne=separateur[2]

		#if classe_choisie in classe:
		#	print(nom, classe, moyenne)

	return nom, classe, moyenne, classe_choisie


def Extraction():

	nom, classe, moyenne, classe_choisie=source()

	if classe_choisie in classe:
		print("Classe : ", '{}'.format(classe)) 
			


while True:
	print("1) Extraire par classse")
	print("2) Moyenne d'une classse")
	print("3) Fin")


	reponse = input("Votre choix : ")

	if reponse == "1" :
		Extraction()

	elif reponse == "2":
		Moyenne()

	elif reponse == "3":
		print("Sortie du programme")
		print("Au revoir !!!")
		break
		

