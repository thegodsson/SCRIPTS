#!/usr/bin/python

#Nouvelle méthode
from decimal import Decimal

def afficher_ligne(article, quantite, total):
	#print("{article} {quantite} {total}" .format(   ## --> cela nous permet entre autre de changer l'ordre d'affichage , exemple, on vas recopier la ligne et changer l'ordre des variables
	print("{quantite} {article:10} {total}" .format(   ## --> cela nous permet entre autre de changer l'ordre d'affichage , exemple, on vas recopier la ligne et changer l'ordre des variables
		article=article, 
		quantite=quantite, 
		total=total))

afficher_ligne("Carotte", 3, Decimal('1.50'))
afficher_ligne("Fraise", 1, Decimal('0.25'))
