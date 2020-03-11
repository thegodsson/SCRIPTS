#!/usr/bin/python

def saluer(*args, **kwargs):
#def saluer(*args):
	return "Bonjour " + ", ".join(args) + kwargs["nom"]


print(saluer("Caroline", "Mickey", nom=" Mouse"))
  
	
