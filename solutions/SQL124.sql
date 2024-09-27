-- 124. 1484. Group Sold Products By The Date

SELECT sell_date, COUNT(DISTINCT product) num_sold, GROUP_CONCAT(DISTINCT product ORDER BY product) products
FROM Activities
GROUP BY 1
ORDER BY 1