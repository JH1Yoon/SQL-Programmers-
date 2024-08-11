-- 77. 1757. Recyclable and Low Fat Products

SELECT product_id
from Products
where low_fats = 'Y' AND recyclable ='Y'