#! /usr/bin/env python3

# adapted from http://www.tutorialspoint.com/python/python_variable_types.htm

dict = {}
dict['one'] = "This is one"
dict[2]     = "This is two"

tinydict = {'name' : 'john', 'code' : 6734, 'dept' : 'sales'}

print( dict['one'] )        # Prints value for 'one' key
print( dict[2] )            # Prints value for 2 key
print( tinydict )           # Prints complete dictionary
print( tinydict.keys() )    # Prints all the keys
print( tinydict.values() )  # Prints all the values

# iterating over dictionary
dct = {1 : 'D', 5 : 'A', 2 : 'B', 3 : 'B', 4 : 'E'}
for k in dct:
    print(k, dct[k])
print()

for k,v in dct.items():
    print(k, v)
print()

# % chmod +x using_dictionaries.py
# % ./using_dictionaries.py       
# This is one
# This is two
# {'name': 'john', 'dept': 'sales', 'code': 6734}
# dict_keys(['name', 'dept', 'code'])
# dict_values(['john', 'sales', 6734])
# 1 D
# 2 B
# 3 B
# 4 E
# 5 A
# 
# 1 D
# 2 B
# 3 B
# 4 E
# 5 A
# 
