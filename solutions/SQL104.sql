-- 104. 619. Biggest Single Number

SELECT MAX(num) num
FROM (SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(*) = 1) AS unique_nums;