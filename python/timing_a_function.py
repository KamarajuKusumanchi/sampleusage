# % python3 timing_a_function.py
# 7.821839809417725
# 
#  % python2 timing_a_function.py
# 4.98960995674
# 
#  % python2 --version
# Python 2.7.9
# 
#  % python3 --version
# Python 3.4.2

import time
def test():
    i=0
    while i <= 100000000:
        i+=1
start = time.time()
test()
print(time.time() - start)
