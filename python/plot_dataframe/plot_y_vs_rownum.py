#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
This script shows how to plot a column in a dataframe against its row number.
This is useful to visually detect outliers in the data.

Created on Sun Jun  4 20:03:02 2017

@author: rajulocal
"""

"""
demonstrates | create a new dataframe with fewer columns, add a sequence of
numbers as a column to dataframe
"""

import pandas as pd
all_df = pd.read_csv('outlier.txt')

# The original dataframe has many columns. Create a new dataframe with columns
# of interest.
df = all_df[['y']].copy()
df['rownum'] = range(1, df.shape[0]+1)
df.plot(x='rownum', y='y', style='o-', grid=True)

import matplotlib.pyplot as plt
plt.show(block=True)
