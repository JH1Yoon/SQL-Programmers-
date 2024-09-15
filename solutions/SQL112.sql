-- 112. 1907. Count Salary Categories

SELECT 
'Low Salary' category,
SUM(income < 20000) accounts_count
FROM accounts

UNION

SELECT 
'Average Salary' category,
SUM(income >= 20000 and income <= 50000) accounts_count
FROM accounts

UNION

SELECT 
'High Salary' category,
sum(income > 50000) accounts_count
FROM accounts