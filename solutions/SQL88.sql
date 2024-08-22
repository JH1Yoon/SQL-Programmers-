-- 88. 1280. Students and Examinations

SELECT A.student_id, A.student_name, B.subject_name, COUNT(E.subject_name) attended_exams
FROM Students A 
CROSS JOIN Subjects B LEFT OUTER JOIN Examinations E ON 
A.student_id = E.student_id AND B.subject_name = E.subject_name
GROUP BY 1, 2, 3
ORDER BY 1,3