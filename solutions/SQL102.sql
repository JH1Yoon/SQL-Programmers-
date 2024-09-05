-- 102. 596. Classes More Than 5 Students

SELECT class
FROM Courses
GROUP BY class
HAVING count(class) >= 5