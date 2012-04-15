#! /bin/bash

# Do different things based on extension
#
# sample usage
# $ ./using_case_01.sh using_case_01.sh
# extension = sh
# do not understand the sh extension
# $ ./using_case_01.sh kamaraju
# extension = kamaraju
# do not understand the kamaraju extension
# $ ./using_case_01.sh kamaraju.txt
# extension = txt
# this is a txt file
# $ ./using_case_01.sh kama.raju.jpg
# extension = jpg
# this is a picture file
# $ ./using_case_01.sh kama.raju.txt.jpg
# extension = jpg
# this is a picture file


fname=$1
extension=${fname##*.}
echo "extension = $extension"

case $extension in
    txt )
        echo "this is a txt file";
        ;;
    jpg | png | mng )
        echo "this is a picture file";
        ;;
    * )
        echo "do not understand the $extension extension"
        exit 1
        ;;
esac
