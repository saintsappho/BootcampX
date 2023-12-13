SELECT 
      avg(started_at-created_at) as average_wait_time
FROM assistance_requests;

-- SELECT  
--       cohorts.name AS name, 
--       avg(started_at-created_at) as average_wait_time
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON students.cohort_id = cohorts.id  
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time;