-- 32. 카테고리 별 도서 판매량 집계하기

SELECT b.CATEGORY,
        SUM(b_sales.SALES) TOTAL_SALES
FROM BOOK b left join BOOK_SALES b_sales on b.BOOK_ID = b_sales.BOOK_ID
WHERE b_sales.SALES_DATE LIKE '2022-01%'
GROUP BY b.CATEGORY
ORDER BY 1
