-- 174. Challenges

WITH Counts AS (
    SELECT H.hacker_id, H.name, COUNT(*) AS cnt
    FROM Challenges C
    JOIN Hackers H ON H.hacker_id = C.hacker_id
    GROUP BY H.hacker_id, H.name
)

SELECT Counts.hacker_id, Counts.name, Counts.cnt
FROM Counts
WHERE cnt = (SELECT MAX(cnt) FROM Counts)
   OR cnt IN (SELECT cnt FROM Counts GROUP BY cnt HAVING count(*) = 1)
ORDER BY Counts.cnt DESC, Counts.hacker_id;
