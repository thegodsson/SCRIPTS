#!/usr/bin/python

dictionnaire = {"un": 1, "deux": 2} 

class ClefIntrouvable(BaseException):
	pass

try:
	if "trois" not in dictionnaire:
		raise ClefIntrouvable("La clef 'trois' n'existe pas.")


except ClefIntrouvable:
	print("Execption de type ClefIntrouvable")
	raise
