-- 35. 오랜 기간 보호한 동물(2)

SELECT A_INS.ANIMAL_ID, A_INS.NAME
FROM ANIMAL_INS A_INS INNER JOIN ANIMAL_OUTS A_OUTS ON A_INS.ANIMAL_ID = A_OUTS.ANIMAL_ID
ORDER BY (A_OUTS.DATETIME - A_INS.DATETIME) desc
limit 2


SELECT INS.ANIMAL_ID, INS.NAME, TIMESTAMPDIFF(DAY, INS.DATETIME, OUTS.DATETIME)
FROM ANIMAL_INS INS
JOIN ANIMAL_OUTS OUTS USING (ANIMAL_ID) 
ORDER BY TIMESTAMPDIFF(DAY, INS.DATETIME, OUTS.DATETIME) DESC limit 2;
