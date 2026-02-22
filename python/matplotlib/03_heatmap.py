# To visualize a matrix or 2D array, use imshow().
import matplotlib.pyplot as plt
import numpy as np

matrix = np.random.rand(10, 10)

plt.imshow(matrix, cmap='viridis')
plt.colorbar()
plt.show()
