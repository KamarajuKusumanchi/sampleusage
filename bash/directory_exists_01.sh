#! /bin/bash

dirs=(
    "/bin"
    "/blahblah"
    )

for directory in ${dirs[@]}
do
    if [ -d "$directory" ]; then
        echo "$directory exists"
    else
        echo "$directory does not exist"
    fi
done

# Note:- To check if a directory does not exist, use
# if [ ! -d "$directory" ]; then
