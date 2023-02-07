-- Get the total number of assignments for each day of bootcamp.
-- SELECT assignments.day as day_of_submission, count(assignment_submissions.*) as total_assignments
-- FROM assignments
-- ORDER BY assignment.day ASC;


SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
ORDER BY day;