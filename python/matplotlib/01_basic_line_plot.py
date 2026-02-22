# If you have a 1D array, plt.plot() maps the values to the y-axis and uses the
# indices as the x-axis.

import matplotlib.pyplot as plt
import numpy as np

data = np.array([10, 25, 15, 40, 30])

plt.plot(data)
plt.title("Line Plot")
plt.show()
