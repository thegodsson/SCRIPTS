#!/usr/bin/python
with open("sortie", "w") as fichier:
	print(fichier.write("Bonjour"))

with open("sortie", "r") as sortie:
	print(sortie.read())
