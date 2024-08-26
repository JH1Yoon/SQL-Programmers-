-- 92. 1251. Average Selling Price

SELECT P.product_id, IFNULL(ROUND(SUM(U.units*P.price)/SUM(U.units), 2), 0) average_price
FROM Prices P LEFT JOIN UnitsSold U ON P.product_id = U.product_id
AND purchase_date BETWEEN start_date AND end_date
GROUP BY 1