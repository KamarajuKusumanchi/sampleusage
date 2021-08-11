#! /usr/bin/env bash

# compare strings, if else condition

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
