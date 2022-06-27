SELECT cohorts.name AS cohort_name, COUNT(students.name) AS total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort_name
ORDER BY total_submissions DESC;