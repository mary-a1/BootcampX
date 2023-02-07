-- Get the name of all teachers that performed an assistance request during a cohort.

-- SELECT teachers.name as teacher, cohorts.name as cohort
-- FROM cohorts
-- JOIN students on cohort_id = cohorts.id
-- JOIN assistance_requests on student_id = students.id
-- JOIN teachers on teacher_id = teachers.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY cohort, teacher;

-- compass solution
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;
