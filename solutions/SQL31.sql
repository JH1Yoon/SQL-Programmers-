-- 31. 오랜 기간 보호한 동물(1)

SELECT A_INS.NAME, A_INS.DATETIME
FROM ANIMAL_INS A_INS LEFT JOIN ANIMAL_OUTS A_OUTS ON A_INS.ANIMAL_ID = A_OUTS.ANIMAL_ID
WHERE  A_OUTS.ANIMAL_ID IS NULL
ORDER BY A_INS.DATETIME
LIMIT 3



SELECT NAME, DATETIME FROM ANIMAL_INS WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS) ORDER BY DATETIME ASC LIMIT 3;
