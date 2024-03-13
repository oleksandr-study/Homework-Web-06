SELECT DISTINCT
	s.fullname AS student,
	t.fullname AS teacher,
	sub.name AS subject       
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects sub ON sub.id = g.subject_id
JOIN teachers t ON t.id = sub.teacher_id
WHERE s.id = 1 AND t.id = 1;