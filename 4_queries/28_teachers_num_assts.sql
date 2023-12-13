SELECT DISTINCT
    teachers.name AS teacher,
    cohorts.name AS cohort,
    count(assistance_requests) AS total_assistances
FROM assistance_requests
JOIN teachers ON  assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id  
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher;



-- SELECT 
--        day,
--        count(id) as number_or_assignments,
--        sum(duration) AS duration
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;


-- SELECT count(assistance_requests) AS total_assistances, teachers.name AS name
-- FROM assistance_requests
-- JOIN teachers ON teacher_id = teachers.id
-- WHERE teachers.name = 'Waylon Boehm'
-- GROUP BY teachers.name;
