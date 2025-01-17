-- 180. 15 Days of Learning SQL

SELECT
    S1.SUBMISSION_DATE,
    (
        SELECT COUNT(DISTINCT S2.HACKER_ID)
        FROM SUBMISSIONS S2
        WHERE S2.SUBMISSION_DATE = S1.SUBMISSION_DATE
          AND (
              SELECT COUNT(DISTINCT S3.SUBMISSION_DATE)
              FROM SUBMISSIONS S3
              WHERE S3.HACKER_ID = S2.HACKER_ID
                AND S3.SUBMISSION_DATE <= S1.SUBMISSION_DATE
          ) = DATEDIFF(S1.SUBMISSION_DATE, '2016-03-01') + 1
    ) AS HID_CNT1,
    (
        SELECT S2.HACKER_ID
        FROM SUBMISSIONS S2
        WHERE S2.SUBMISSION_DATE = S1.SUBMISSION_DATE
        GROUP BY S2.HACKER_ID
        ORDER BY COUNT(S2.SUBMISSION_ID) DESC, S2.HACKER_ID
        LIMIT 1
    ) AS HID,
    (
        SELECT H.NAME
        FROM HACKERS H
        WHERE H.HACKER_ID = HID
    ) AS NAME
FROM
    (
        SELECT DISTINCT SUBMISSION_DATE
        FROM SUBMISSIONS
        WHERE SUBMISSION_DATE BETWEEN '2016-03-01' AND '2016-03-15'
    ) S1
ORDER BY
    S1.SUBMISSION_DATE;

