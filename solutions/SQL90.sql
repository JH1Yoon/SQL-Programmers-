-- 90. 1934. Confirmation Rate

SELECT s.user_id, ROUND(AVG(IF(c.action = 'confirmed', 1, 0)), 2) confirmation_rate 
FROM Signups s LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY 1