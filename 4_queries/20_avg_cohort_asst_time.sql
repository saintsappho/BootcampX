SELECT avg(completed_at-started_at) as average_assistance_request_duration
FROM assistance_requests;


SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';