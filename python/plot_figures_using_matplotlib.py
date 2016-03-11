# # -*- coding: utf-8 -*-
# """
# Spyder Editor
# 
# This is a temporary script file.
# """

# Afterwards figure out why the labels are not showing up.
# Got this code from https://code.activestate.com/lists/python-list/697859/

from matplotlib import pyplot

xdata = [0, 1, 2, 3, 4]
ydata = [0, 1, 0, 1, 0]

fig = pyplot.figure(figsize=(4,3))
ax = fig.add_axes([0.15, 0.15, 0.70, 0.70])
ax.plot(xdata, ydata, color='black', linewidth=2)
ax.set_label('$V_x$')
ax.set_label('$V_y$')
pyplot.show()

# To save figures in other formats
# fig.savefig('plot.eps')
# fig.savefig('plot.pdf')
# fig.savefig('plot.jpg')
