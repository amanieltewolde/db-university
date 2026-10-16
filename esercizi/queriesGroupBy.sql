-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS annual_university_enrolment,  YEAR(enrolment_date) 
FROM students
GROUP BY YEAR(enrolment_date);