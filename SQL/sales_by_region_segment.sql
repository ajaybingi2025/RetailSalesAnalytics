SELECT c.region, c.segment, SUM(o.sales) AS revenue
FROM orders o
JOIN customers c ON o.customerid = c.customerid
GROUP BY c.region, c.segment
ORDER BY revenue DESC;

