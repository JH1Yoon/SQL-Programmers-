-- 96. 1193. Monthly Transactions I

SELECT DATE_FORMAT(trans_date, "%Y-%m") month, country, COUNT(trans_date) trans_count, 
SUM(IF(state="approved", 1,0)) approved_count, SUM(amount) trans_total_amount, SUM(IF(state="approved", amount, 0)) approved_total_amount
FROM Transactions 
GROUP BY YEAR(trans_date), MONTH(trans_date), country