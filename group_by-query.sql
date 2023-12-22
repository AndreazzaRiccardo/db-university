-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(`enrolment_date`), COUNT(*) AS `num_students`
FROM `students`
GROUP BY YEAR(`enrolment_date`);


-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT  `office_address` ,COUNT(*) AS `total_teachers`
FROM `teachers`
GROUP BY `office_address`;


-- 3. Calcolare la media dei voti di ogni appello d'esame

SELECT `exam_id`, ROUND(AVG(`exam_student`.`vote`), 2) AS `avg_vote`
FROM `exam_student`
GROUP BY `exam_id`;


-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT `department_id`, COUNT(*) AS `num_degrees`
FROM `degrees`
GROUP BY `department_id`;
