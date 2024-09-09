-- 106. 1731. The Number of Employees Which Report to Each Employee

SELECT e1.employee_id, e1.name, COUNT(e2.reports_to) reports_count, ROUND(AVG(e2.age*1.00), 0) average_age
FROM Employees e1 INNER JOIN Employees e2 ON e2.reports_to = e1.employee_id
GROUP BY 1, 2
ORDER BY 1