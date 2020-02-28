#!/usr/bin/python
#Dans ce script nous allons ajouté un héritage en losange

class Animal:
	def __init__(self):
		print('Je suis un Animal')

class Felin(Animal):
	def __init__(self):
		super().__init__()   ### --> cela vas nous permettre d'hérité de la classe précédente
		print('Je suis un Felin')

class Domestique(Animal):
	def __init__(self):
		super().__init__()
		print("Je suis un animal domestique")
	

class Chat(Felin, Domestique):
	def __init__(self):
		super().__init__()   ### --> cela vas nous permettre d'hérité de la classe précédente
		print('Je suis un chat')


chat1 = Chat()

print(isinstance(chat1, Domestique))

