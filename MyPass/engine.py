#!/bin/python
from googlesearch import search
query = input ("Enter what you want : ")
for i in search(query, num=1000, stop=1000, pause=2):
    print ("own-engine information : " + i + "\n")
