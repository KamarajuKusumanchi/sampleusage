#!/bin/bash

# Initial version is from https://unix.stackexchange.com/questions/129072/whats-the-difference-between-and
# Sample run
# <script_name> one two "three four"

echo "Using \$*:"
for a in $*; do
    echo $a;
done

echo -e "\nUsing \"\$*\":"
for a in "$*"; do
    echo $a;
done

echo -e "\nUsing \$@:"
for a in $@; do
    echo $a;
done

echo -e "\nUsing \"\$@\":"
for a in "$@"; do
    echo $a;
done
