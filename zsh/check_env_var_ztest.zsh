#! /usr/bin/env zsh

if [ -z $KAMA ]; then
    echo "KAMA is not set"
else
    echo "KAMA is set"
fi

if [ ! -z $PWD ]; then
    echo "PWD is set"
else
    echo "PWD is not set"
fi
