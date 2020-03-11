#!/usr/bin/python

def espionner(fonction):
	def imposteur(nom):
		print("Appel de la fonction " + fonction.__name__ + " avec le paramètre " + nom)
		return fonction(nom)
	return imposteur

@espionner
def saluer(nom):
	return "Bonjour " + nom

@espionner
def remercier(nom):
	return "Merci " + nom


print(saluer("david"))
print(remercier("toto"))
  
	
