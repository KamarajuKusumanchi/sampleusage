# Snippet to activate a conda environment only if needed.
#! /usr/bin/env bash

desired_env=py38
if [ -z $CONDA_DEFAULT_ENV ] || [ $CONDA_DEFAULT_ENV != "$desired_env" ]; then
    echo "current conda environment is $CONDA_DEFAULT_ENV. Changing it to $desired_env"
    source activate "$desired_env"
else
    echo "conda environment is already set to $desired_env"
fi
