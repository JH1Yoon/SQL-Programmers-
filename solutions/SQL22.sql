-- 22. 조건에 맞는 회원수 구하기

SELECT COUNT(USER_ID) USERS
FROM USER_INFO 
WHERE AGE BETWEEN 20 AND 29 AND DATE_FORMAT(JOINED, '%Y') = 2021



SELECT COUNT(USER_ID) USERS
FROM USER_INFO 
WHERE AGE>=20 AND AGE<=29 AND DATE_FORMAT(JOINED, '%Y') = 2021