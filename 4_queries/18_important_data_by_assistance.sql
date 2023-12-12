SELECT teachers.name AS teacher ,students.name AS student, assignments.name AS assignment, assistance_requests.duration AS duration
FROM teachers
JOIN students ON students.name = student_name
JOIN assignments ON assignment_name = assignments.name
JOIN assistance_requests ON assistance_requests_duration = assistance_requests.duration;