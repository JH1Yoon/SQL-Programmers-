-- 183. Print Prime Numbers

WITH RECURSIVE primes(n) AS (
    SELECT 2
    UNION ALL
    SELECT n + 1 FROM primes WHERE n + 1 <= 1000
)
SELECT GROUP_CONCAT(n SEPARATOR '&') 
FROM primes
WHERE NOT EXISTS (
    SELECT 1 FROM primes AS p WHERE p.n < primes.n AND primes.n % p.n = 0
);
