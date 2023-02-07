-- Get each day with the total number of assignments and the total duration of the assignments.

-- SELECT day, count(assignments) as number_of_assignments, sum(assignment_submissions.duration) as duration
-- FROM assignments
-- JOIN assignment_submissions on assignment_id = assignments.id
-- GROUP BY day
-- ORDER BY day;

-- compass solution
SELECT day, count(*) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;
