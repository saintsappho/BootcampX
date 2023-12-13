SELECT 
      avg(sum_duration) as average_total_duration
FROM (SELECT sum(completed_at-started_at) AS sum_duration
      FROM assistance_requests
      JOIN students ON students.id = student_id
      JOIN cohorts ON students.cohort_id = cohorts.id  
      GROUP BY cohorts.name) AS total_duration;
