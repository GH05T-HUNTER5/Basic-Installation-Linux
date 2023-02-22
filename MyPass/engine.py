#!/bin/python
######################################################
######################################################
##################### READ THIS ######################
######################################################
######################################################
## Dear GitHub user, please do not copy this script ##
######################################################
## Create your own Termux banner tool and invite us ##
######################################################
##      We will help you build beautiful tools      ##
######################################################
##          OUR GITHUB ID : GH05T-HUNTER5           ##
######################################################
##  All copyright under the laws of all countries   ##
######################################################
##        Copyright of  GH05T HUNTER5, 2023         ##
######################################################
######################################################
	
	
	
#######################################################################################
#######################################################################################
##   own-engine 	: 	information gethering toolkit								   ##
##   Authors 		: 	GH05T-HUNTER5												   ##
##   Version 		: 	1.0															   ##
##   Github 		: 	https://github.com/GH05T-HUNTER5/own-engine				   ##
#######################################################################################
##  MIT License 																	   ##
##																				   ##
##  Copyright (c) 2023 GH05T HUNTER5 							                       ##
##																				   ##
##  Permission is hereby granted, free of charge, to any person obtaining a copy     ##
##  of this software and associated documentation files (the "Software"), to deal    ##
##  in the Software without restriction, including without limitation the rights     ##
##  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell        ##
##  copies of the Software, and to permit persons to whom the Software is            ##
##  furnished to do so, subject to the following conditions:                         ##
##                                                                                   ##
##  The above copyright notice and this permission notice shall be included in all   ##
##  copies or substantial portions of the Software.                                  ##
##  																				   ##
##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR       ##
##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,         ##
##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE      ##
##  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER           ##
##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,    ##
##  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE    ##
##  SOFTWARE.          															   ##
#######################################################################################
#######################################################################################	
from googlesearch import search
query = input ("Enter what you want : ")
for i in search(query, num=1000, stop=1000, pause=2):
    print ("own-engine information : " + i + "\n")
