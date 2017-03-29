# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import pandas as pd
# The file can be specified by using either absolute path or relative path.
df = pd.read_csv('weight.txt', sep='\t')

df['date'] = pd.to_datetime(df['date'], format='%Y-%m-%d')
df.plot(x='date', y='weight in lbs', style='o-', grid=True)

# The figures produced by DataFrame.plot are closed when the program ends since
# pandas' DataFrame.plot does not block. But since Pandas uses matplotlib
# internally, you can circumvent this by calling matplotlib.pyplot.show with
# block=True
import matplotlib.pyplot as plt
plt.show(block=True)
# This way the program will end only when plt.show returns, which is after you
# close all figures.
