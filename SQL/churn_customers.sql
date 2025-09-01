SELECT DISTINCT c.customerid, c.name, c.region
FROM customers c
WHERE c.customerid NOT IN (
    SELECT customerid
    FROM orders
    WHERE orderdate >= CURRENT_DATE - INTERVAL '6 months'
);
