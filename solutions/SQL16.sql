-- 16. 경기도에 위치한 식품창고 목록 출력하기

SELECT WAREHOUSE_ID, 
        WAREHOUSE_NAME, 
        ADDRESS,
        IFNULL(FREEZER_YN, 'N') FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '%경기도%'
ORDER BY 1



SELECT WAREHOUSE_ID, 
        WAREHOUSE_NAME, 
        ADDRESS,
        IF(FREEZER_YN IS NULL, 'N', FREEZER_YN) FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '%경기도%'
ORDER BY 1
