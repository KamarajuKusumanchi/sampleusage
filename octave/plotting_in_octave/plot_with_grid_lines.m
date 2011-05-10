# sample script which shows how to plot with grid lines in octave
#
# Author      : Kamaraju S. Kusumanchi
# Email       : kamaraju at gmail dot com
# Last edited : Mon May  9 23:29:20 EDT 2011

# turn on grids for graphics
set(0, 'DefaultAxesXGrid', 'on')
set(0, 'DefaultAxesYGrid', 'on')
set(0, 'DefaultAxesZGrid', 'on')

x=[1:100];
plot( sin(x/6) )  # dividing x by 6 gives a "nice" looking plot of sine waves.

# sample run:
# $octave -q                                                                                                                              
# octave:1> plot_with_grid_lines
# 
