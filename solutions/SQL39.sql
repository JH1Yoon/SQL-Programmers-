-- 39. 성분으로 구분한 아이스크림 총 주문량

SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) 'TOTAL_ORDER'
FROM FIRST_HALF HALF INNER JOIN ICECREAM_INFO INFO ON HALF.FLAVOR = INFO.FLAVOR
GROUP BY 1
ORDER BY 2
