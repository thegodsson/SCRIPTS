#!/usr/bin/python

dictionnaire = {"un": 1, "deux": 2} 

try:
	print(dictionnaire["trois"])
except	KeyError:
	raise Exception("La clef 'trois' n'existe pas.")
else:	
	print("AUcune erreur.")
finally:
	print("C'est fini")

