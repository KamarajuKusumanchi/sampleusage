# plot a spiral in octave
#
# Author      : Kamaraju S. Kusumanchi
# Email       : kamaraju at gmail dot com
# Last edited : Mon Dec  8 00:54:20 EST 2014

# original code is from http://comments.gmane.org/gmane.comp.gnu.octave.general/54370

r = @(t) exp(0.306349 * t);
t = 0:0.1:5*pi;
x = r(t) .* cos(t);
y = r(t) .* sin(t);
plot(x, y, 'Color', 'm', 'LineWidth', 2);
grid on

# sample usage:
# $ octave -q
# octave:1> spiral
# 
