#! /usr/bin/env bash

# set -x

city=("Albany" "b o s t o n")
state=("NY" "M A")

ncity=${#city[@]}
nstate=${#state[@]}
if [ $ncity -ne $nstate ]; then
  echo "Exiting as the number of elements in city and state arrays do not match."
  echo "ncity = " $ncity
  echo "nstate = " $nstate
  exit 1
fi

for ((i=0; i < ${#city[@]}; i++));
do
  echo $i ${city[$i]} ${state[$i]}
done
