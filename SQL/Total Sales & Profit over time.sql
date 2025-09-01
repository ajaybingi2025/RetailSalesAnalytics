--Total Sales & Profit Over Time
SELECT DATE_TRUNC('month', orderdate) AS month,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM orders
GROUP BY month
ORDER BY month;
