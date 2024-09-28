-- 125. 1327. List the Products Ordered in a Period

SELECT P.product_name, SUM(O.unit) unit
FROM Products P JOIN Orders O ON P.product_id  = O.product_id
WHERE YEAR(order_date) = '2020' AND MONTH(order_date) = '02'
GROUP BY 1
HAVING SUM(O.unit) >= 100