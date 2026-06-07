
# Total Revenue Generated

SELECT ROUND(SUM(SALES), 2) AS Total_Revenue
FROM sales_data;


# Top 10 Customers by Revenue

SELECT CUSTOMERNAME,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales_data
GROUP BY CUSTOMERNAME
ORDER BY Revenue DESC
LIMIT 10;


# Revenue by Product Line

SELECT PRODUCTLINE,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales_data
GROUP BY PRODUCTLINE
ORDER BY Revenue DESC;


# Monthly Revenue Analysis

SELECT YEAR_ID,
       MONTH_ID,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales_data
GROUP BY YEAR_ID, MONTH_ID
ORDER BY YEAR_ID, MONTH_ID;


# Revenue by Country

SELECT COUNTRY,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales_data
GROUP BY COUNTRY
ORDER BY Revenue DESC;


# Sales by Deal Size

SELECT DEALSIZE,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales_data
GROUP BY DEALSIZE
ORDER BY Revenue DESC;


# Top 5 Best Selling Products

SELECT PRODUCTCODE,
       SUM(QUANTITYORDERED) AS Units_Sold
FROM sales_data
GROUP BY PRODUCTCODE
ORDER BY Units_Sold DESC
LIMIT 5;


# Order Status Distribution

SELECT STATUS,
       COUNT(*) AS Number_of_Orders
FROM sales_data
GROUP BY STATUS
ORDER BY Number_of_Orders DESC;


#Top Performing Territory

SELECT TERRITORY,
       ROUND(SUM(SALES), 2) AS Revenue
FROM sales_data
GROUP BY TERRITORY
ORDER BY Revenue DESC;


# Average Order Value

SELECT ROUND(AVG(SALES), 2) AS Average_Order_Value
FROM sales_data;
```
