#!/usr/bin/python

#Nouvelle méthode
from decimal import Decimal

def afficher_ligne(article, quantite, total):
	print("{} {} {}" .format(article, quantite, total))

afficher_ligne("Carotte", 3, Decimal('1.50'))
afficher_ligne("Fraise", 1, Decimal('0.25'))
