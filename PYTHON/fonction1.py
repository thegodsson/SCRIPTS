#!/usr/bin/python

def remercier(nom):
	def saluer(nom):
		return "Bonjour " + nom
	return saluer(nom)


print(remercier("Clémentine"))
  
	
