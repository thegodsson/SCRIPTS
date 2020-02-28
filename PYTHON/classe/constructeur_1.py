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
	def norme(self):
		return sqrt(self.x**2 + self.y**2)

vecteur1 = Vecteur(-4, 2)
print(vecteur1)
print(vecteur1.norme())
