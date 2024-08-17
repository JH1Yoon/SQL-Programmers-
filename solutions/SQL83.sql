-- 83. 1068. Product Sales Analysis I

SELECT product_name, year, price
FROM Sales s JOIN Product p on s.product_id = p.product_id