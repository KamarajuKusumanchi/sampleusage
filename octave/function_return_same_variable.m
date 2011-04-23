# Author : Kamaraju S. Kusumanchi
# Date (last modified) : Sun Jun 13 18:49:22 EDT 2010

# Demonstrate how to return input variables

# prevent Octave from thinking that this is a function file
clear;

function [X] = return_same_variable(X)
  X = X*2;
endfunction

a = 8.2;
b = return_same_variable(a);
[a b]
