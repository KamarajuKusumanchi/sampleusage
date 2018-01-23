#! /usr/bin/env bash
set -e
set -u
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 foo" >&2
  exit 1
fi
foo=$1
echo $foo
