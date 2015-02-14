#! /usr/bin/octave -qf
# Author : Kamaraju S. Kusumanchi
# Email  : kamaraju at gmail dot com
# Date (last modified) : Sat Feb 14 11:31:49 EST 2015

# Starting from two polynomials A (the dividend) and B (the divisor), find the
# quotient (Q) and the remainder (R) such that A = BQ + R

# As an example, take (x^3 - 2 x^2 -4) which can represented as 
# (x-3)*(x^2 + x + 3) + 5 .

clear;
dividend = [1,-2,0,-4]
divisor = [1,-3]

[quotient, remainder] = deconv(dividend, divisor)

# sample usage:
# rajulocal@hogwarts ~/sampleusage/octave
#  % octave -qf
# octave:1> polynomial_long_division
# dividend =
#    1  -2   0  -4
# divisor =
#    1  -3
# quotient =
#    1   1   3
# remainder =
#    0   0   0   5
# octave:2> version
# ans = 3.8.2

# See also:
# http://en.wikipedia.org/wiki/Polynomial_long_division
# Related:
# http://en.wikipedia.org/wiki/Sturm%27s_theorem
