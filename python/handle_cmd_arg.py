#! /usr/bin/env python3

# adapted from
# http://www.tutorialspoint.com/python/python_command_line_arguments.htm

import sys

print("Number of arguments: ", len(sys.argv), " arguments.")
print("Argument List: ", str(sys.argv))

# Sample usage:
# % ./arg_list.py arg1 arg2 arg3
# Number of arguments:  4  arguments.
# Argument List:  ['./arg_list.py', 'arg1', 'arg2', 'arg3']
# 
# % python3 ./arg_list.py arg1 arg2 arg3
# Number of arguments:  4  arguments.
# Argument List:  ['./arg_list.py', 'arg1', 'arg2', 'arg3']
#
# % python3 --version
# Python 3.4.2
# 
