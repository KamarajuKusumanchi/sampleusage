#! /usr/bin/octave -qf
# Author : Kamaraju S. Kusumanchi
# Email  : kamaraju at gmail dot com
# Date (last modified) : Sun Jun 15 19:26:40 EDT 2014

# prevent Octave from thinking that this is a function file
clear;

A1 = [1 2 3 4];
A2 = [3 4 5 6];

A3 = intersect(A1, A2);

printf("first set    = ");
disp(A1);
printf("second set   = ");
disp(A2);
printf("intersection = ");
disp(A3);

# sample usage
# rajulocal@hogwarts:~/sampleusage/octave$ ./using_intersect.m
# first set    =    1   2   3   4
# second set   =    3   4   5   6
# intersection =    3   4
