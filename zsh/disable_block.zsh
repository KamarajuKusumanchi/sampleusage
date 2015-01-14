#! /usr/bin/zsh

# If you have a block of code that you do not want to be executed but at the
# same time you do not want to comment it. You can use this hack.

if ((0==1)) then
echo "I am in 0==1";
fi

if ((1==1)) then
echo "I am in 1==1";
fi
