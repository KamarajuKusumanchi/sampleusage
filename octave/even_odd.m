# Author : Kamaraju S. Kusumanchi
# Email  : kamaraju at gmail dot com
# Date (last modified) : Sun Apr 29 14:31:05 EDT 2012
#
# prevent Octave from thinking that this is a function file
clear;

function even_odd1(m)
  # use bitand instead of mod to figure out if a number is odd or even
  # if (mod(m, 2) == 1)
  if (bitand(m,1))
    printf("%d is odd\n", m)
  else
    printf("%d is even\n", m)
  endif
endfunction

n = 25
even_odd1(n)
n = 30
even_odd1(n)
