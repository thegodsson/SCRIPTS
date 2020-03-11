#!/usr/bin/python

#Nouvelle méthode
from decimal import Decimal

def afficher_ligne(article, quantite, total):
	pluriel = "s" if quantite > 1 else " "
	print("{quantite} {article:10} {total}".format(
		article=article + pluriel,
		quantite=quantite, 
		total=total))

afficher_ligne("Carotte", 3, Decimal('1.50'))
afficher_ligne("Fraise", 1, Decimal('0.25'))
