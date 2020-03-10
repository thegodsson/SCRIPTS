#!/usr/bin/python

def generateur():
	while True:
		yield 1

gen = generateur()

print(gen.__next__())
print(gen.__next__())
print(gen.__next__())
