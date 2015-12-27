#!/usr/bin/env python3

# adapted from http://www.tutorialspoint.com/python/python_variable_types.htm

str = 'Hello World!'

print( str )            # Prints complete string
print( str[0] )         # Prints first character of the string
print( str[2:5] )       # Prints characters starting from 3rd to 5th
print( str[2:] )        # Prints string starting from 3rd character
print( str * 2 )        # Prints string two times
print( str + "TEST" )   # Prints concatenated string

# sample usage:
# % chmod +x using_strings.py
# % ./using_strings.py 
# Hello World!
# H
# llo
# llo World!
# Hello World!Hello World!
# Hello World!TEST
