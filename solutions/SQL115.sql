-- 115. 1341. Movie Rating

(SELECT Users.name results
FROM MovieRating LEFT JOIN Users ON MovieRating.user_id = Users.user_id
GROUP BY Users.user_id
ORDER BY COUNT(MovieRating.movie_id) DESC, 1
LIMIT 1)
UNION ALL
(SELECT Movies.title results
FROM MovieRating LEFT JOIN Movies ON MovieRating.movie_id = Movies.movie_id 
WHERE  MovieRating.created_at LIKE '2020-02%' 
GROUP BY  MovieRating.movie_id
ORDER BY AVG(MovieRating.rating) DESC, 1 
LIMIT 1)