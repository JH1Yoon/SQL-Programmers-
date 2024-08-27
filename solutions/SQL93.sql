-- 93. 1075. Project Employees I

SELECT project_id, round((sum(experience_years)/count(E.employee_id)),2) average_years 
FROM Project P left JOIN Employee E ON P.employee_id = E.employee_id 
GROUP BY 1  