import pandas as pd
import statsmodels.api as sm

data = pd.DataFrame({'y' : [2, 4, 6, 8, 10, 12], 'x' : [1, 2, 3, 4, 5, 6]})
model = sm.OLS(data['y'], data['x']).fit()
print("Model Summary", model.summary())


data = pd.DataFrame({'y' : [1.9, 4.1, 5.9, 8.1, 9.9, 12.1], 'x' : [1, 2, 3, 4, 5, 6]})
model = sm.OLS(data['y'], data['x']).fit()
print("Model Summary", model.summary())
