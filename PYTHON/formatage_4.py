#!/usr/bin/python

#Nouvelle méthode
from decimal import Decimal

def afficher_ligne(article, quantite, total):
	#print("{article} {quantite} {total}" .format(   ## --> cela nous permet entre autre de changer l'ordre d'affichage , exemple, on vas recopier la ligne et changer l'ordre des variables
	print("{quantite} {article:>10} {pluriel} {total}" .format(   ## --> la chiffre 10 apres aricles permet un alignement des articles plus vers la droitea , le "<" ajouté devant le 10, permet de rapproché le "s" de la variable pluriel au champs des articles, exemple "Carotte  s" deviendra "Carrote s"
		article=article, 
		pluriel="s" if quantite > 1 else " ", # --> ajoute un "s" au articles qui ont plus de 1 articles, sinon ajoute un espace
		quantite=quantite, 
		total=total))

afficher_ligne("Carotte", 3, Decimal('1.50'))
afficher_ligne("Fraise", 1, Decimal('0.25'))
