-- 114. 626. Exchange Seats

SELECT IF (id < (SELECT MAX(id) FROM Seat),
            IF(id % 2 = 0, id-1, id+1),
            IF(id % 2 = 0, id-1, id)
            ) id, student
FROM Seat
ORDER BY id