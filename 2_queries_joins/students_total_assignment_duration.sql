SELECT sum(assignments_submissions.duration) as total_duration
FROM assignments_submissions
JOIN students ON student.id = student_id
WHERE student.name = 'Ibrahim SChimmel'