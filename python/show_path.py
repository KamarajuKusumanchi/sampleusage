'''List folders in PATH one per each line'''

import os
ar = os.environ['PATH'].split(';')
for i in ar:
    print(i)