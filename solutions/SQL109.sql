-- 109. 180. Consecutive Numbers

SELECT DISTINCT num AS ConsecutiveNums
FROM (
    SELECT 
        LAG(id) OVER (ORDER BY id) AS prev_id,
        id,
        LEAD(id) OVER (ORDER BY id) AS next_id,
        LAG(num) OVER (ORDER BY id) AS prev_num,
        num,
        LEAD(num) OVER (ORDER BY id) AS next_num
    FROM logs
) subquery
WHERE prev_num = num 
  AND num = next_num
  AND next_id - id = 1 
  AND id - prev_id = 1;