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
ON degrees.department_id  = department.id
WHERE departments.name = 'Dipartimento di Neuroscienze' AND degrees.`level` = 'magistrale';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT teachers.name, teachers.surname, courses.name AS Fulvio_Amato_courses
FROM courses
JOIN course_teacher
ON courses.id = course_teacher.course_id 
JOIN teachers
ON course_teacher.teacher_id = teachers.id 
WHERE teachers.id = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui
-- sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e
-- nome
SELECT students.surname, students.name, degrees.name, departments.name 
FROM students
JOIN degrees
ON students.degree_id = degrees.id 
JOIN departments
ON degrees.department_id = departments.id
ORDER BY students.surname, students.name ;

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT degrees.*, courses.name, teachers.surname, teachers.name 
FROM degrees
JOIN courses
ON degrees.id = courses.degree_id 
JOIN course_teacher
ON courses.id = course_teacher.course_id 
JOIN teachers
ON course_teacher.teacher_id = teachers.id 
ORDER BY degrees.name 
