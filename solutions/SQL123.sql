-- 123. 176. Second Highest Salary

SELECT MAX(salary) SecondHighestSalary 
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee)