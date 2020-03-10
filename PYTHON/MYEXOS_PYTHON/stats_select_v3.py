#!/usr/bin/python

from os import system

def clear():
	effacer = system('clear')
	
def pause():
	temps = system('sleep 3')



def source():

	fichier=open("eleves.txt", "r")

	classe_choisie = input("Entrer une Classe : ")

	return fichier, classe_choisie


def Extraction():

	fichier, classe_choisie=source()

	for line in fichier:
		separateur = line.split("|")
		nom=separateur[0]
		classe=separateur[1]
		moyenne=separateur[2]

		if classe_choisie in classe:
			print(nom, classe, moyenne) 

def Moyenne():

	fichier, classe_choisie=source()

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
	choix_1 = print("1) Extraire par classse")
	choix_2 = print("2) Moyenne d'une classse")
	choix_3 = print("3) Fin")


	try:
		choix1 = int(choix_1)
		choix2 = int(choix_2)
		choix3 = int(choix_3)
	except:
		pass

	reponse = input("Votre choix : ")

	if reponse == "1" :
		Extraction()
		pause()
		clear()
		

	elif reponse == "2":
		Moyenne()
		pause()
		clear()

	elif reponse == "3":
		print("Sortie du programme")
		print("Au revoir !!!")
		break
		

