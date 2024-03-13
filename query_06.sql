SELECT
	g.name as group_name,
	s.fullname as students_name
FROM students s  
JOIN groups g on g.id = s.group_id
WHERE g.id = 2;