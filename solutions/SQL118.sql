-- 118. 585. Investments in 2016

SELECT ROUND(SUM(tiv_2016), 2) tiv_2016
FROM Insurance 
WHERE tiv_2015 IN (
    SELECT tiv_2015
    FROM Insurance
    GROUP BY 1
    HAVING COUNT(*) > 1
) AND (lat, lon) IN (
    SELECT lat, lon
    FROM Insurance
    GROUP BY 1, 2
    HAVING COUNT(*) = 1
)