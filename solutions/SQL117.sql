-- 117. 602. Friend Requests II: Who Has the Most Friends

SELECT id, COUNT(*) num
FROM (SELECT requester_id id FROM RequestAccepted 
UNION ALL
SELECT accepter_id FROM RequestAccepted) friends_count
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1