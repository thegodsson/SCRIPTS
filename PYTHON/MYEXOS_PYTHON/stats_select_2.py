#!/usr/bin/python

reponse = input("Entrer un classe : ")


fichier=open("eleves.txt", "r")

dico1={}

for line in fichier:
	separateur = line.split("|")
	nom=separateur[0]
	classe=separateur[1]
	moyenne=separateur[2]


	if reponse in line:
		print(nom, classe, moyenne)




		
