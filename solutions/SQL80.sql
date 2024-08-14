-- 80. 1148. Article Views I

SELECT author_id id
FROM Views
WHERE author_id = viewer_id
GROUP BY id
ORDER BY 1;