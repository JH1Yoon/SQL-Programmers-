-- 7. 아픈 동물 찾기

SELECT ANIMAL_ID,
        NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'
ORDER BY ANIMAL_ID
