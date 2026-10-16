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