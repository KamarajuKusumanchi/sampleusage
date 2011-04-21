# Author : Kamaraju S. Kusumanchi
# Date (last modified) : Wed Apr 18 18:18:41 EDT 2007
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
