
import pandas as pd

df = pd.read_csv('sales_data.csv')

df['Revenue'] = df['Quantity'] * df['Price']

print('Total Revenue:', df['Revenue'].sum())
print('\nTop Selling Products')
print(df.groupby('Product')['Quantity'].sum().sort_values(ascending=False))
