-- 6. 동명 동물 수 찾기

SELECT NAME, 
        COUNT(NAME) 
FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT(NAME) > 1
ORDER BY NAME