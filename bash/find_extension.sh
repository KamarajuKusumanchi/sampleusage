#! /bin/bash

# find the extension of a file
#
# sample usage
# $ ./find_extension.sh find_extension.sh
# sh
# $ ./find_extension.sh kamaraju.txt
# txt
# $ ./find_extension.sh kama.raju.txt
# txt
# $ ./find_extension.sh kama.raju.txt.jpg
# jpg

fname=$1
extension=${fname##*.}
echo $extension
