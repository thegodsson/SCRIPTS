#/usr/bin/python

fichier=open("test1.txt", "r")


#i=0
somme=0

for line in fichier:
#	i +=1
	somme = int(somme)
	line = int(line)

	#print("Line n°", i, " : ", line)
	somme = somme + line

	print("La somme est : ", somme)


