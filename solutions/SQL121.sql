-- 121. 1527. Patients With a Condition

SELECT *
FROM Patients
WHERE conditions LIKE 'DIAB1%' OR conditions like '% DIAB1%'