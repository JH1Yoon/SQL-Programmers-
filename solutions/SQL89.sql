-- 89. 570. Managers with at Least 5 Direct Reports

SELECT E.name
FROM Employee E JOIN Employee M ON E.id = M.managerId
GROUP BY M.managerId
HAVING count(M.managerId) >= 5