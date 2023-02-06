-- Get the total amount of time that a student has spent on all assignments.
-- SELECT assignments_submissions.duration as assignment_submissions
-- FROM students
-- JOIN assignments ON duration = assignment.submissions.duration
-- WHERE students.name = 'Ibrahim Schimmel';

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';