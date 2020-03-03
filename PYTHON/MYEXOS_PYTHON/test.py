#!/usr/bin/python


def Extraction():
	fichier=open("eleves.txt", "r")
	classe_choisie = input("Entrer une Classe : ")

	for line in fichier:
		separateur= line.split("|")
		nom=separateur[0]
		classe=separateur[1]
		moyenne=separateur[2]

	
		if classe_choisie in classe:
			print(nom, classe, moyenne)
      

Extraction()
