-- 97. 1174. Immediate Food Delivery II

SELECT ROUND(AVG(order_date = customer_pref_delivery_date) * 100, 2) immediate_percentage 
FROM Delivery
WHERE (customer_id, order_date) IN (
  SELECT customer_id, min(order_date) 
  FROM Delivery
  GROUP BY customer_id
);