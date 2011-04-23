# Author : Kamaraju S. Kusumanchi
# Date (last modified) : Mon Jul  2 11:54:33 EDT 2007

# Demonstrate how to return multiple values from functions

# prevent Octave from thinking that this is a function file
clear;

function [nrows ncols matrix] = linear(M, N)
  nrows = M;
	ncols = N;
  matrix = zeros(M,N);

  for i=1:M
    for j=1:N
      matrix(i,j) = i+j-1;
    end
  end
endfunction

M = 7;
N = 5;
[a b slope] = linear(M, N);
a
b
slope
