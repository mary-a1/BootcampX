-- List each assignment with the total number of assistance requests with it.

SELECT assignments.id as id, name, day, chapter, count(assistance_requests.*) as total_requests
FROM assignments
JOIN assistance_requests on assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;