#!/usr/bin/python

def entrer():
	
	while True:
		nombre = input("Entrer un nombre : ")
		try:
			nombre = int(nombre)
			break
		except:
			print("Ce n'est pas un nombre")
	return nombre

def verif():
	nombre = entrer()

	if nombre < 10:
		print("Le nombre", nombre, "est plus petit que 10")
	elif 10 <= nombre <= 20:
		print("Le nombre", nombre, "est plus gran que 10, mais plus petit que 20")
	

verif()
