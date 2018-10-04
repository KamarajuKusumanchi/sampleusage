# From https://instructobit.com/tutorial/108/How-to-share-global-variables-between-files-in-Python

import globals
import test
if __name__ == "__main__":
    globals.initialize()
    print( globals.num ) # print the initial value
    test.increment()
    print( globals.num ) # print the value after being modified within test.py
