#! /bin/bash

if [ ! -z $LD_LIBRARY_PATH ]; then
    echo "variable LD_LIBRARY_PATH exists";
else
    echo "variable LD_LIBRARY_PATH does not exist";
fi

if [ -z $C_INCLUDE_PATH ]; then
    echo "variable C_INCLUDE_PATH does not exist";
else
    echo "varibale C_INCLUDE_PATH exists";
fi
