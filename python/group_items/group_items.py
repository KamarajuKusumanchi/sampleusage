''' Given a data set such as

city year fval
XC1 2001  10
XC1   2001  20
XC1   2002   20
XC1   2002   10
XC1 2002   10
Yv2 2001   10
Yv2 2002   20
Yv2 2002   20
Yv2 2002   10
Yv2 2002   10

this program will count the number of observations by year for each city. The
output will be

city year obs
XC1  2001  2
XC1  2002  3
Yv2  2001  1
Yv2  2002  4
'''

'''
Initial version is from http://code.activestate.com/lists/python-list/699205/
'''

import pandas
table = pandas.read_csv('data.txt', delimiter=r"\s+")
print(table)
print()

groups = table.groupby(["city", "year"])["fval"].count()
print(groups)


'''
Sample usage:
% python3 group_items.py
  city  year  fval
0  XC1  2001    10
1  XC1  2001    20
2  XC1  2002    20
3  XC1  2002    10
4  XC1  2002    10
5  Yv2  2001    10
6  Yv2  2002    20
7  Yv2  2002    20
8  Yv2  2002    10
9  Yv2  2002    10

city  year
XC1   2001    2
      2002    3
Yv2   2001    1
      2002    4
Name: fval, dtype: int64
'''
