SELECT cohorts.name as cohort,
AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
ORDER BY average_assistance_time DESC
LIMIT 1;