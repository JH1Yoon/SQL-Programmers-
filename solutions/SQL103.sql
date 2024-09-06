-- 103. 1729. Find Followers Count

SELECT user_id, count(follower_id) followers_count
FROM Followers
GROUP BY user_id
ORDER BY 1