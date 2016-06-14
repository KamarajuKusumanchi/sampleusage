# -*- coding: utf-8 -*-
"""
Spyder Editor

Plot multiple timeseries data
Initial version is from 
http://stackoverflow.com/questions/9627686/plotting-dates-on-the-x-axis-with-pythons-matplotlib
"""
import datetime as dt
dates1 = ['01/02/1991','01/15/1991','01/20/1991']
x1 = [dt.datetime.strptime(d,'%m/%d/%Y').date() for d in dates1]
y1 = range(len(x1))

dates2 = ['01/05/1991','01/8/1991','01/21/1991']
x2 = [dt.datetime.strptime(d,'%m/%d/%Y').date() for d in dates2]
y2 = range(len(x2))

import matplotlib.pyplot as plt
import matplotlib.dates as mdates

plt.gca().xaxis.set_major_formatter(mdates.DateFormatter('%m/%d/%Y'))
# plt.gca().xaxis.set_major_formatter(mdates.DayLocator())
plt.plot(x1,y1)
plt.plot(x2,y2)
plt.gcf().autofmt_xdate()
plt.show()
