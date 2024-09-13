-- 110. 1164. Product Price at a Given Date

SELECT DISTINCT product_id, 10 price FROM Products WHERE product_id NOT IN(SELECT DISTINCT product_id FROM Products WHERE change_date <='2019-08-16' )
UNION 
SELECT product_id, new_price price FROM Products WHERE (product_id,change_date) IN (SELECT product_id , max(change_date) date FROM Products WHERE change_date <='2019-08-16' GROUP BY product_id)