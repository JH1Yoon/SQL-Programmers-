-- 84. 1581. Customer Who Visited but Did Not Make Any Transactions

SELECT customer_id, count(V.visit_id)count_no_trans
FROM Visits V left JOIN Transactions T ON V.visit_id = T.visit_id
WHERE transaction_id is NULL
GROUP BY 1