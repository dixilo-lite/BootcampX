SELECT sum(completed_at-started_at) as total_duration , cohorts.name as cohort
FROM assistance_requests;
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;