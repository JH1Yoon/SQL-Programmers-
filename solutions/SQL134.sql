-- 134. Weather Observation Station 2

SELECT ROUND(SUM(LAT_N), 2) lat, ROUND(SUM(LONG_W), 2) lon
FROM STATION;