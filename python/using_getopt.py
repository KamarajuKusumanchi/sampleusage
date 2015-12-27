#!/usr/bin/env python3

# adapted from
# http://www.tutorialspoint.com/python/python_command_line_arguments.htm

import sys, getopt

def main(argv):
   scriptname = sys.argv[0];
   inputfile = ''
   outputfile = ''
   try:
      opts, args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
   except getopt.GetoptError:
      print(scriptname, '-i <inputfile> -o <outputfile>')
      sys.exit(2)
   for opt, arg in opts:
      if opt == '-h':
         print(scriptname, '-i <inputfile> -o <outputfile>')
         sys.exit()
      elif opt in ("-i", "--ifile"):
         inputfile = arg
      elif opt in ("-o", "--ofile"):
         outputfile = arg
   print('Input file is "', inputfile)
   print('Output file is "', outputfile)

if __name__ == "__main__":
   main(sys.argv[1:])

# % ./using_getopt.py   
# Input file is " 
# Output file is " 
# % echo $?
# 0
#
# % ./using_getopt.py -a
# ./using_getopt.py -i <inputfile> -o <outputfile>
#  % echo $?             
# 2
#
# % ./using_getopt.py -h
# ./using_getopt.py -i <inputfile> -o <outputfile>
# % echo $?
# 0
#
# % ./using_getopt.py -i BMP -o
# ./using_getopt.py -i <inputfile> -o <outputfile>
# % echo $?
# 2
#
# % ./using_getopt.py -i BMP         
# Input file is " BMP
# Output file is " 
# % echo $?
# 0
#
# % python3 --version
# Python 3.4.2
