
import pandas as pd


df = pd.read_csv("sales_data.csv")


total_revenue = df["SALES"].sum()

print("========== SALES ANALYSIS ==========")
print(f"Total Revenue: ${total_revenue:,.2f}")


print("\n========== TOP 10 CUSTOMERS ==========")

top_customers = (
    df.groupby("CUSTOMERNAME")["SALES"]
      .sum()
      .sort_values(ascending=False)
      .head(10)
)

print(top_customers)


print("\n========== REVENUE BY PRODUCT LINE ==========")

product_revenue = (
    df.groupby("PRODUCTLINE")["SALES"]
      .sum()
      .sort_values(ascending=False)
)

print(product_revenue)


print("\n========== REVENUE BY COUNTRY ==========")

country_revenue = (
    df.groupby("COUNTRY")["SALES"]
      .sum()
      .sort_values(ascending=False)
      .head(10)
)

print(country_revenue)


print("\n========== TOP SELLING PRODUCTS ==========")

top_products = (
    df.groupby("PRODUCTCODE")["QUANTITYORDERED"]
      .sum()
      .sort_values(ascending=False)
      .head(10)
)

print(top_products)


print("\n========== ORDER STATUS ==========")

status_distribution = (
    df.groupby("STATUS")
      .size()
      .sort_values(ascending=False)
)

print(status_distribution)


avg_order_value = df["SALES"].mean()

print("\n========== ORDER VALUE ==========")
print(f"Average Order Value: ${avg_order_value:,.2f}")

