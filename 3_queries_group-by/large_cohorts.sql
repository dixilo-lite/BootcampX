SELECT cohort.name as cohort_name, count(students.*) AS student_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING sum(students.*) >= 18
ORDER BY student_count;