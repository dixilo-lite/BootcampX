SELECT day, sum(*) as total_assignments
FROM assignments
GROUP BY day,
HAVING sum(*) >= 10,
ORDER by day;
