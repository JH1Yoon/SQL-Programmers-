-- 169. New Companies

SELECT C.company_code,
       C.founder,
       COUNT(DISTINCT LM.lead_manager_code),
       COUNT(DISTINCT SM.senior_manager_code),
       COUNT(DISTINCT M.manager_code),
       COUNT(DISTINCT E.employee_code)
FROM COMPANY C
         LEFT JOIN LEAD_MANAGER LM ON C.company_code = LM.company_code
         LEFT JOIN SENIOR_MANAGER SM ON LM.lead_manager_code = SM.lead_manager_code
         LEFT JOIN MANAGER M ON SM.senior_manager_code = M.senior_manager_code
         LEFT JOIN Employee E ON M.manager_code = E.manager_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code