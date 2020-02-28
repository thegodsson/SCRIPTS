#!/usr/bin/python

class Animal:
	def __init__(self):
		print('Je suis un Animal')

class Felin(Animal):
	def __init__(self):
		super().__init__()   ### --> cela vas nous permettre d'hérité de la classe précédente
		print('Je suis un Felin')

class Chat(Felin):
	def __init__(self):
		super().__init__()   ### --> cela vas nous permettre d'hérité de la classe précédente
		print('Je suis un chat')


chat1 = Chat()

print(isinstance(chat1, Chat))
print(isinstance(chat1, Felin))
print(isinstance(chat1, Animal))
