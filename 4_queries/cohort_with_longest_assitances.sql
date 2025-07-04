SELECT AVG(completed_at-started_at) as average_assistance_time, cohorts.name
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
join cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;