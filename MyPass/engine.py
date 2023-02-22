#!/bin/python
RED = "\033[0;31m"
GREEN = "\033[0;32m"
CYAN = "\033[0;36m"
from googlesearch import search
query = input (GREEN + "Search for anything : ")
for i in search(query, num=1000, stop=1000, pause=2):
    print (RED + "own-engine info " + CYAN + ": " + GREEN + i + "\n")
