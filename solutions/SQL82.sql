-- 82. 1378. Replace Employee ID With The Unique Identifier

SELECT u.unique_id, e.name
FROM Employees e LEFT JOIN EmployeeUNI u on e.id = u.id
ORDER BY 1 DESC;