-- 3. 중복 제거하기

SELECT count(DISTINCT NAME) AS COUNT FROM ANIMAL_INS WHERE NAME IS NOT NULL;