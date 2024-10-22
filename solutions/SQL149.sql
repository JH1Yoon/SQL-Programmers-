-- 149. The PADS

SELECT CONCAT(name, '(', substring(occupation, 1, 1), ')')
FROM Occupations
ORDER BY name, substring(occupation, 1, 1);

SELECT CONCAT('There are a total of ', count(occupation), ' ', LOWER(occupation), 's.')
FROM Occupations
GROUP BY occupation
ORDER BY count(occupation), occupation