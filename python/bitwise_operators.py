#! /usr/bin/env python3

# adapted from http://www.tutorialspoint.com/python/bitwise_operators_example.htm

a = 60            # 60 = 0011 1100 
b = 13            # 13 = 0000 1101 
c = 0

c = a & b;        # 12 = 0000 1100
print("Line 1 - Value of c is ", c)

c = a | b;        # 61 = 0011 1101 
print("Line 2 - Value of c is ", c)

c = a ^ b;        # 49 = 0011 0001
print("Line 3 - Value of c is ", c)

c = ~a;           # -61 = 1100 0011
print("Line 4 - Value of c is ", c)

c = a << 2;       # 240 = 1111 0000
print("Line 5 - Value of c is ", c)

c = a >> 2;       # 15 = 0000 1111
print("Line 6 - Value of c is ", c)

# sample usage
# % chmod +x bitwise_operators.py
# % ./bitwise_operators.py
# Line 1 - Value of c is  12
# Line 2 - Value of c is  61
# Line 3 - Value of c is  49
# Line 4 - Value of c is  -61
# Line 5 - Value of c is  240
# Line 6 - Value of c is  15
