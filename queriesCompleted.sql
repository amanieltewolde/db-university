-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT *
FROM students
WHERE YEAR(date_of_birth) = '1990'; 

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)
SELECT *
FROM courses
WHERE cfu > '10';


-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del
--     20/06/2020 (21)
SELECT *
FROM exams
WHERE `date` = '2020/06/20' AND `hour` > '14:00:00';

-- 6. Selezionare tutti i corsi di laurea magistrale (38)
SELECT *
FROM degrees
WHERE `level` = 'magistrale';