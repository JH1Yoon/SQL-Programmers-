-- 101. 1070. Product Sales Analysis III

SELECT product_id, year first_year, quantity, price
FROM Sales
WHERE (product_id, year) IN (SELECT product_id, min(year) FROM Sales GROUP BY product_id)