-- 91. 620. Not Boring Movies

SELECT id, movie, description, rating
FROM Cinema
WHERE MOD(id, 2) = 1 AND description != 'boring'
ORDER BY 4 DESC