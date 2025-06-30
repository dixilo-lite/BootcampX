SELECt cohort.name as cohort, sum(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON student.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort.name
ORDER BY total_submissions DESC;