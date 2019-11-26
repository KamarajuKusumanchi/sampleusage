#! /usr/bin/env bash
set -e
set -u
if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  echo "Usage: $0 foo <bar>" >&2
  echo "Number of arguments should be between 1 and 2"
  exit 1
fi
foo=$1
bar=${2:-default}
echo $foo
echo $bar
