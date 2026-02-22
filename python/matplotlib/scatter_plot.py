# To plot specific coordinates, pass two arrays of the same length.
import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(0, 10, 20)
y = np.sin(x)

plt.scatter(x, y, color='red')
plt.xlabel("X-axis")
plt.ylabel("Sine Wave")
plt.show()
