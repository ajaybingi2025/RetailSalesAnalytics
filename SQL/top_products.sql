SELECT p.subcategory, SUM(o.sales) AS revenue
FROM orders o
JOIN products p ON o.productid = p.productid
GROUP BY p.subcategory
ORDER BY revenue DESC
LIMIT 10;
