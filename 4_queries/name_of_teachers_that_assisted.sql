SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON student_id = students.id
JOIN cohorts on cohort_id = cohorts_id
WHERE cohorts.name ='JUL02'
ORDER BY teacher