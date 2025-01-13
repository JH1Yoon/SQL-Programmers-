-- 181. Draw The Triangle 1

WITH RECURSIVE numbers AS (
    SELECT 20 AS n
    UNION ALL
    SELECT n - 1 FROM numbers WHERE n > 1
)
SELECT REPEAT('* ', n) AS pattern
FROM numbers;