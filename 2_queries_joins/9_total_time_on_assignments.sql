SELECT sum(assignments_submission.duration) as total_duration
FROM assignments_submission
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';
