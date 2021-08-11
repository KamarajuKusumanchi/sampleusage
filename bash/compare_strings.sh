#! /usr/bin/env bash

# Sample script to show how string comparison works in bash

terminal_type=`uname -s | cut -f 1 -d '-'`
if [ "$terminal_type" = "MINGW64_NT" ];
then
    echo "using git bash terminal"
elif [ "$terminal_type" = "CYGWIN_NT" ];
then
    echo "using cygwin terminal"
else
    echo "unknown terminal"
fi

# Ref:
# * https://stackoverflow.com/questions/2237080/how-to-compare-strings-in-bash
#  * explains why the quotes (ex:- "$terminal_type") are important.
