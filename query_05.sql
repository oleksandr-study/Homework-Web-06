SELECT
	t.fullname as teacher,
	s.name as subject_name
FROM teachers t 
JOIN subjects s on t.id = s.teacher_id
WHERE t.id = 1;