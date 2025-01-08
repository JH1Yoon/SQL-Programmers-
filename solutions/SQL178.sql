-- 178. Symmetric Pairs

SELECT A.X, A.Y
FROM Functions A
JOIN Functions B ON A.X = B.Y AND A.Y = B.X
GROUP BY A.X, A.Y
HAVING COUNT(A.X) > 1 OR A.X < A.Y
ORDER BY A.X;