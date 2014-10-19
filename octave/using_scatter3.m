#! /usr/bin/octave -qf
# Author : Kamaraju S. Kusumanchi
# Email  : kamaraju at gmail dot com
# Date (last modified) : Sun Oct 19 00:04:47 EDT 2014


[x, y, z] = peaks (20);
scatter3 (x(:), y(:), z(:), [], z(:));

# usage:
# rajulocal@hogwarts:~/sampleusage/octave$ octave -qf
# octave:1> source ("using_scatter3.m");
