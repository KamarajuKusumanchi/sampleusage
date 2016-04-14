# This function shows how to time different functions in a given script.
# Ref:- https://code.activestate.com/lists/python-list/696758/

# The third method, using functools.partial, is considerably faster, BUT
# remember that this only effects the time it takes to call the function g().
# If g() actually does any work, the time spent doing the work will *far*
# outweigh the overhead of calling the function.

# Sample usage:
# % python3 timing_a_function2.py
# 0.20427153701893985
# 0.18759917799616233
# 0.13798172696260735

def g(p):
    return

def f1(p=3):  # argument with a default
    return g(p)

def f2():  # no argument at all
    return g(3)

from functools import partial
f3 = partial(g, 3)


# setup timing code
from timeit import Timer
t1 = Timer("f1()", "from __main__ import f1")
t2 = Timer("f2()", "from __main__ import f2")
t3 = Timer("f3()", "from __main__ import f3")

print( min(t1.repeat(repeat=7)) )
print( min(t2.repeat(repeat=7)) )
print( min(t3.repeat(repeat=7)) )
