SELECT sub.name as subject,
       t.fullname as teacher,
       ROUND(AVG(g.grade), 2) as average_grade
FROM teachers t
JOIN subjects sub on t.id = sub.teacher_id
JOIN grades g on sub.id = g.subject_id
WHERE t.id = 1
GROUP BY subject, teacher
ORDER BY average_grade DESC;