-- 156. The Blunder

SELECT
    CEIL(
            ABS(
                    (SELECT AVG(salary) FROM EMPLOYEES) -
                    (SELECT AVG(CAST(REPLACE(CAST(salary AS CHAR), '0', '') AS UNSIGNED)) FROM EMPLOYEES)
            )
    ) AS error;