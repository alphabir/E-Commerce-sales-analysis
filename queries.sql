
-- Total Revenue
SELECT SUM(Quantity * Price) AS Revenue FROM sales;

-- Top Selling Products
SELECT Product, SUM(Quantity) AS UnitsSold
FROM sales
GROUP BY Product
ORDER BY UnitsSold DESC;

-- Monthly Revenue
SELECT Month, SUM(Quantity * Price) AS Revenue
FROM sales
GROUP BY Month
ORDER BY Revenue DESC;
