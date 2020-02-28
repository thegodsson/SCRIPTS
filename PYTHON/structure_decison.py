#!/usr/bin/python

def comparer(x, y):
	if x == y:
		return "Les 2 nombres sont égaux"
	elif x > y:
		return str(x) + " est superieur a " + str(y)
	else:
		return str(y) + " est superieur a " + str(x)

print(comparer(20, 2))
