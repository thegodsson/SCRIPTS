#!/usr/bin/python

class Animal:
	pass
	def __init__(self):
		print('Je suis un Animal')

class Felin(Animal):
	pass
	def __init__(self):
		print('Je suis un Felin')

class Chat(Felin):
	def __init__(self):
		print('Je suis un chat')


chat1 = Chat()
felin1 = Felin()
animal1 = Animal()

