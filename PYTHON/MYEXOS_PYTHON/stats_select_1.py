#!/usr/bin/python

def Extraction():
	fichier=open("eleves.txt", "r")
	dico1={}
	classe_choisie = input("Entrer une Classe : ")

	for line in fichier:
		separateur = line.split("|")
		nom=separateur[0]
		classe=separateur[1]
		moyenne=separateur[2]
		#return classe_choisie, nom, classe, moyenne
		if classe_choisie in classe:
			print(nom, classe, moyenne)
def Moyenne():

	fichier=open("eleves.txt", "r")
	dico1={}
	classe_choisie = input("Entrer une Classe : ")

	somme=0
	i=0
	tot=0

	for line in fichier:

		separateur = line.split("|")
		nom=separateur[0]
		classe=separateur[1]
		moyenne=separateur[2]

		somme = int(somme)
		moyenne = int(moyenne)
		tot = float(tot)

		if classe_choisie in classe:
			print("Note : ", '{}'.format(moyenne)) 
			i+=1
			somme = somme + moyenne
			nbr_ligne = i
			tot = somme / nbr_ligne
	print("La moyenne de la Classe de {} est : {}".format(classe_choisie, tot))

	
			
			


while True:
	print("1) Extraire par classse")
	print("2) Moyenne d'une classse")
	print("3) Fin")


	reponse = input("Votre choix : ")

	if reponse == "1" :
		#affichage() 
		Extraction()

	elif reponse == "2":
		Moyenne()

	elif reponse == "3":
		print("Sortie du programme")
		print("Au revoir !!!")
		break
		

