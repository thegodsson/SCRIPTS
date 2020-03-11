#!/usr/bin/python

#Ancienne méthode
from decimal import Decimal

def afficher_ligne(article, quantite, total):
	print("%10s %d %.2f" % (article, quantite, total))   ### %.2f --> permet d'avoir 2 chiffre apres la virgule

afficher_ligne("Carotte", 3, Decimal('1.50'))
afficher_ligne("Fraise", 1, Decimal('0.25'))
