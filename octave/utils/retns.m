#! /usr/bin/octave -qf
# Given a vector of stock prices compute the returns
# Say the price vector is p(1:n), we have to compute
# the returns vector r(1:n) such that
#   r(1) = 0;
#   r(i) = (p(i) - p(i-1))./p(i-1)  for i=2:n
#
# Author      : Kamaraju S. Kusumanchi
# Email       : kamaraju at gmail dot com
# Last edited : Sat Apr 23 14:20:40 EDT 2011

function [r] = retns(p)
  # one way is
  # r = [0.0; diff(p) ./ p(1:end-1)];
  # second way is
  r = [ 0.0;  (p(2:end)./p(1:end-1))-1];
end

# sample run:
# $octave -q                                                                                                          
# octave:1> a = [1.0 1.5 2.625 5.25]'
# a =
# 
#    1.00000000000000
#    1.50000000000000
#    2.62500000000000
#    5.25000000000000
# 
# octave:2> retns(a)
# ans =
# 
#    0.000000000000000
#    0.500000000000000
#    0.750000000000000
#    1.000000000000000

