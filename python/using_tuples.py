#! /usr/bin/env python3

# adapted from http://www.tutorialspoint.com/python/python_variable_types.htm

tuple = ('abcd', 786, 2.23, 'john', 70.2)
tinytuple = (123, 'john')

print( tuple )              # Prints complete tuple
print( tuple[0] )           # Prints first element of the tuple
print( tuple[1:3] )         # Prints elements starting from 2nd till 3rd
print( tuple[2:] )          # Prints elements starting from 3rd element
print( tinytuple * 2 )      # Prints tinytuple two times
print( tuple + tinytuple )  # Prints concatenated tuples

# sample usage:
# % chmod +x using_tuples.py
# % ./using_tuples.py       
# ('abcd', 786, 2.23, 'john', 70.2)
# abcd
# (786, 2.23)
# (2.23, 'john', 70.2)
# (123, 'john', 123, 'john')
# ('abcd', 786, 2.23, 'john', 70.2, 123, 'john')
