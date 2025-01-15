-- 182. Draw The Triangle 2

WITH RECURSIVE numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n < 20
)
SELECT REPEAT('* ', n) AS pattern
FROM numbers;