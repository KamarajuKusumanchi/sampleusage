#! /bin/bash

# bash exit if variable is not set

set -u
# instead of set -u , you can also use
#     set -o nounset

myval1=12345;

echo "myval1 = " $myval1;
echo "myval2 = " $myval2;


