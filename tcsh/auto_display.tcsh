# Set DISPLAY variable if it is not already set by reading from a file
#
# source this file and do not execute it
# For example add this line to ~/.cshrc
#
# source /path/to/auto_display.zsh


# Run only on linux machines
set os=`uname`
if ( $os != "Linux" ) then
    exit 0
endif

set odir=~/data/xserver
set host=`hostname`
set ofile=${host}_display

if (! $?DISPLAY) then
    echo "DISPLAY is not set. Read it from a file"
    setenv DISPLAY `cat ~/data/xserver/${host}_display`
else
    echo "DISPLAY is set. Write it to a file"
    mkdir -p $odir
    echo $DISPLAY > $odir/$ofile
endif
