-- 176. SQL Project Planning

WITH RankedTasks AS (
    SELECT Start_Date, End_Date,
           Start_Date - ROW_NUMBER() OVER (ORDER BY Start_Date) AS Ranks
    FROM Projects
),
ProjectDates AS (
    SELECT MIN(Start_Date) AS Project_Start_Date, 
           MAX(End_Date) AS Project_End_Date
    FROM RankedTasks
    GROUP BY Ranks
)

SELECT Project_Start_Date, Project_End_Date
FROM ProjectDates
ORDER BY DATEDIFF(Project_End_Date, Project_Start_Date), Project_Start_Date;