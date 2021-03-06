#!/usr/bin/python

from math import sqrt

class Vecteur:
	def __init__(self, x, y):
		self.x = x
		self.y = y

	def __str__(self):
		"Retourne l'affichage d'un vecteur au format mathématique"
		#la ligne suivant nous permet d'afficher les vecteur comme en mathématique, abcsise et ordoné le caractère "(" n'est juste là pour de l'affichage
		return "(" + str(self.x) + ', ' + str(self.y) + ")"

	#la fonction suivante doit nous retourné la norme du vercteur, c'est sa longueur, se calcule en prenant les carrés des x et de y, et en prenant la racine carré  de cet addition
	"Retourne la norme du vecteur"
	@property
	def norme(self):
		return sqrt(self.x**2 + self.y**2)

	longueur = norme

vecteur1 = Vecteur(-4, 2)
print(vecteur1)
#print(vecteur1.norme()) ## Ici on accède à la norme d'un vecteur via une fonction le mieux c'est d'y accédé via un atttibut, pour cela nous allons utilisé le décorateur "property", qui vas transformé notre fonction en attribut
#print(vecteur1.norme) --> pas bon, il manque "property" 
print(vecteur1.norme)
print(vecteur1.longueur)
