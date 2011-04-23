# Author : Kamaraju S. Kusumanchi
# Date (last modified) : Wed Apr 18 18:44:12 EDT 2007

# Demonstrate how to return values from functions

# prevent Octave from thinking that this is a function file
clear;

function retval = linear(N)
  retval = zeros(N,N);

  for i=1:N
    for j=1:N
      retval(i,j) = i+j-1;
    end
  end
endfunction

N = 8;
slope = linear(N);
slope
