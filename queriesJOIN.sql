-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT *
FROM students
JOIN degrees
ON students.degree_id = degrees.id
WHERE degrees.name = 'Corso di Laurea in Economia';

-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di
-- Neuroscienze
SELECT degrees.name ,departments.name 
FROM degrees
JOIN departments
ON degrees.department_id  = department_id
WHERE departments.name = 'Dipartimento di Neuroscienze' AND degrees.`level` = 'magistrale';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT teachers.name, teachers.surname, courses.name AS Fulvio_Amato_courses
FROM courses
JOIN course_teacher
ON course_id = course_teacher.course_id 
JOIN teachers
ON course_teacher.teacher_id = teacher_id 
WHERE teachers.id = 44;