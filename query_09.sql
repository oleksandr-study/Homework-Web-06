SELECT DISTINCT
	s.fullname AS student,
	sub.name AS subject       
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON sub.id = g.subject_id
WHERE s.id = 1;