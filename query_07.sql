SELECT
	gr.grade as grade,
	s.fullname as students_name,
	g.name as group_name,
	su.name as subject
FROM grades gr  
JOIN subjects su on su.id = gr.subject_id
JOIN students s on s.id = gr.student_id
JOIN groups g on g.id = s.group_id
WHERE su.id = 1 AND g.id = 1;