# Set DISPLAY variable if it is not already set by reading from a file
#
# source this file and do not execute it
# For example add this line to ~/.zshrc
#
# source /path/to/auto_display.zsh


# Run only on linux machines
os=`uname`
if [[ $os != "Linux" ]]; then
    return
fi

odir=~/data/xserver
host=$(hostname)
ofile=${host}_display

if [ -z $DISPLAY ]; then
    echo "DISPLAY is not set. Read it from a file"
    export DISPLAY=$(cat ~/data/xserver/$(hostname)_display)
else
    echo "DISPLAY is set. Write it to a file"
    mkdir -p $odir
    echo $DISPLAY > $odir/$ofile
fi
