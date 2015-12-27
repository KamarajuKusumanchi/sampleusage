#! /usr/bin/env python3

# adapted from http://www.tutorialspoint.com/python/python_variable_types.htm

list = ['abcd', 786, 2.23, 'john', 70.2]
tinylist = [123, 'john']

print( list )               # Prints complete list
print( list[0] )            # Prints first element of the list
print( list[1:3] )          # Prints elements starting from 2nd till 3rd
print( list[2:] )           # Prints elements starting from 3rd element
print( tinylist * 2 )       # Prints tinylist two times
print( list + tinylist )    # Prints concatenated lists

# sample usage:
# % chmod +x using_lists.py 
# % ./using_lists.py 
# ['abcd', 786, 2.23, 'john', 70.2]
# abcd
# [786, 2.23]
# [2.23, 'john', 70.2]
# [123, 'john', 123, 'john']
# ['abcd', 786, 2.23, 'john', 70.2, 123, 'john']
