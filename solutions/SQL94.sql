-- 94. 1633. Percentage of Users Attended a Contest

SELECT contest_id, round(count(user_id) * 100.0 / (select count(user_id) from Users), 2) percentage
FROM Register R
GROUP BY 1
ORDER BY 2 DESC, 1