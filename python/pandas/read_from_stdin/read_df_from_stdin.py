#!/usr/bin/env python3

import sys
import pandas as pd

df = pd.read_csv(sys.stdin)
print(df)

print(df.describe())
