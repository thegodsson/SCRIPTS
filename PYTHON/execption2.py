#!/usr/bin/python

dictionnaire = {"un": 1, "deux": 2} 

try:
	print(dictionnaire["trois"])
except	KeyError:
	dictionnaire["trois"] = 3
	print(dictionnaire["trois"])
except:
	print("Autre erreur")
else:	
	print("AUcune erreur")
finally:
	print("C'est fini")

