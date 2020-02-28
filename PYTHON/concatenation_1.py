#!/usr/bin/python

print("Bonjour" + '!')
print("Bonjour le monde !".split())
print("Bonjour-le-monde !".split("-"))
print("Bonjour-le-monde !".split("-", 1))
print("Bonjour-le-monde !".rsplit("-"))
print("Bonjour-le-monde !".rsplit("-", 1))
print("     Bonjour le monde !    ".strip())
print("#" + "     Bonjour le monde !    " + "#")
print("#" + "     Bonjour le monde !    ".strip() + "#")
print("Bonjour le monde !"[0]) # --> n'affichera que la première lettre de la chaine de caratère
print("Bonjour le monde !"[0:7]) # --> Le mot bonjour , comporte 7 caractère


for caractere in "Bonjour le monde!":
	print(caractere)

for caractere in "Bonjour le monde!":   
	print(caractere, end=" " )	### --> end permet de ne pas sauter de  ligne
