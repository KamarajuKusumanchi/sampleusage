#! /usr/bin/env bash

mylist=('foo', 'bar')

mystr=''
for elem in "${mylist[@]}"; do
    mystr+="^  $elem|"
done

echo "$mystr"
