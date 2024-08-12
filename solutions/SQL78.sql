-- 78. 584. Find Customer Referee

SELECT name
FROM Customer
WHERE NOT referee_id = 2 OR referee_id IS NULL;