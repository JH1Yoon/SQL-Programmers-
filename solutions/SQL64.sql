-- 64. 헤비 유저가 소유한 장소2021 Dev-Matching: 웹 백엔드 개발자(상반기)

SELECT ID, NAME, HOST_ID
FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(*) >= 2
    )
ORDER BY ID