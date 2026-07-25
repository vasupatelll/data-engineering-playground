SELECT  
    learners.student_id,
    learners.student_name,
    sub.subject_name,
    COUNT(exam.subject_name) as attended_exams 
FROM Students learners
CROSS JOIN Subjects sub
LEFT JOIN Examinations exam
    ON learners.student_id = exam.student_id
    AND exam.subject_name = sub.subject_name
GROUP BY
    1,2,3
ORDER BY 
    1,3
