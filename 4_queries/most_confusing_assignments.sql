select assignments.id, day, chapter, name , count(assistance_requests) as total_requests
FROM assignements
JOIN assistance_requests ON assignments_id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;