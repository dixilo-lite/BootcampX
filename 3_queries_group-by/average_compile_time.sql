SELECT students.name as student, AVG(assignment_submissions.duration*) as average_assignment_duration
FROM students
JOIN assignment_submissions on student.id = student_id
WHILE student.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC