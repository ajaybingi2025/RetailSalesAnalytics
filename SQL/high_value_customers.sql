SELECT c.name, SUM(o.sales) AS total_spent
FROM orders o
JOIN customers c ON o.customerid = c.customerid
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT (SELECT CEIL(COUNT(DISTINCT customerid) * 0.05) FROM orders);
