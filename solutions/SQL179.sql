-- 179. Interviews

SELECT 
    contests.contest_id, 
    contests.hacker_id, 
    contests.name, 
    COALESCE(SUM(ss.total_submissions), 0) AS total_submissions, 
    COALESCE(SUM(ss.total_accepted_submissions), 0) AS total_accepted_submissions, 
    COALESCE(SUM(vs.total_views), 0) AS total_views, 
    COALESCE(SUM(vs.total_unique_views), 0) AS total_unique_views
FROM contests
JOIN colleges ON contests.contest_id = colleges.contest_id
JOIN challenges ON colleges.college_id = challenges.college_id
LEFT JOIN (
    SELECT challenge_id, 
           SUM(total_views) AS total_views, 
           SUM(total_unique_views) AS total_unique_views
    FROM view_stats
    GROUP BY challenge_id
) vs ON challenges.challenge_id = vs.challenge_id
LEFT JOIN (
    SELECT challenge_id, 
           SUM(total_submissions) AS total_submissions, 
           SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM submission_stats
    GROUP BY challenge_id
) ss ON challenges.challenge_id = ss.challenge_id
GROUP BY contests.contest_id, contests.hacker_id, contests.name
HAVING SUM(ss.total_submissions) != 0 
   OR SUM(ss.total_accepted_submissions) != 0 
   OR SUM(vs.total_views) != 0 
   OR SUM(vs.total_unique_views) != 0
ORDER BY contests.contest_id;