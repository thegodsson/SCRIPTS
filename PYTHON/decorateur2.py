#!/usr/bin/python

def decorator(func):
	print("---------")
	return func


@decorator
def hello():
	print("Hello !")
def hi():
	print("Hi !")


hello()
hi()
