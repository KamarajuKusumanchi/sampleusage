# Author : Kamaraju S. Kusumanchi
# Email  : kamaraju at gmail dot com
# Date (last modified) : Sun Apr 29 14:31:05 EDT 2012

clear;
st = struct("abc", 1, "def", []);

st
fieldnames(st)
isfield(st, 'abc')
isfield(st, "abc")
isfield(st, {'abc'})
isfield(st, {"abc"})
isfield(st, 'raju')
isfield(st, {'raju'})

# when using octave 3.6.1 the output is
# octave:3> using_isfield
# st =
# 
#   scalar structure containing the fields:
# 
#     abc =  1
#     def = [](0x0)
# 
# ans = 
# {
#   [1,1] = abc
#   [2,1] = def
# }
# ans =  1
# ans =  1
# ans =  1
# ans =  1
# ans = 0
# ans = 0

