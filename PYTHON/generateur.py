#!/usr/bin/python

def generateur():
	yield 1
	yield 2
	yield 3

gen = generateur()

print(gen.__next__())
print(gen.__next__())
print(gen.__next__())
