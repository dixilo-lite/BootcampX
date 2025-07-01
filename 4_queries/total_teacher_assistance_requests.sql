SELECT teachers.name, count(assistance_requests.*) as total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name LIKE 'Waylon Boehm'
GROUP BY teachers.name;