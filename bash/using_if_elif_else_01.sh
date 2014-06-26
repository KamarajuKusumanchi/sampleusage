#! /bin/bash

# sample usage of if, elif, else in bash

set -o nounset

myver=12345;
myval1=10000;
myval2=12345;
myval3=13000;


# usage of -ne
if [[ $myver -ne $myval1 ]];
then
    echo "myver is not equal to myval1";
fi

# usage of -eq, if, elif
if [[ $myver -eq $myval1 ]];
then
    echo "myver is equal to myval1";
elif [[ $myver -eq $myval2 ]];
then
    echo "myver is equal to myval2";
else
    echo "myver is not equal to myval1, myval2";
fi

# usage of else
if [[ $myver -eq $myval1 ]];
then
    echo "myver is equal to myval1";
elif [[ $myver -eq $myval3 ]];
then
    echo "myver is equal to myval3";
else
    echo "myver is not equal to myval1, myval3";
fi
