#!/usr/bin/python

dictionnaire = {"un": 1, "deux": 2} 

try:
	print(dictionnaire["trois"])
except	KeyError:
	dictionnaire["trois"] = 3 / 0
	print(dictionnaire["trois"])
	raise
else:	
	print("AUcune erreur.")
finally:
	print("C'est fini")

