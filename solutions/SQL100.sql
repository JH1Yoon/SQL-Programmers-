-- 100. 1141. User Activity for the Past 30 Days I

SELECT activity_date day, count(DISTINCT user_id) active_users 
FROM Activity
WHERE activity_date > "2019-06-27" AND activity_date <= "2019-07-27"
GROUP BY 1