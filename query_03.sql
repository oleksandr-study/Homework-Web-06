SELECT sub.name as subject,
       g.name as group_name,
       ROUND(AVG(gr.grade), 2) as average_grade
FROM   subjects sub
JOIN   grades gr ON sub.id = gr.subject_id
JOIN   students s ON s.id = gr.student_id
JOIN   groups g ON g.id = s.group_id
WHERE  sub.id = 4
GROUP BY subject, group_name
ORDER BY average_grade DESC;