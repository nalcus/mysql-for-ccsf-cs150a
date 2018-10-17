/* Assignment 3.sql
  Nicholas Alcus
   CS 150A, Fall 2018
*/

/* put the database name into this command */


/* Query 0 */
SELECT user(), current_date();
USE university;

/* Query 1 */
SELECT * FROM student WHERE dept_id IN (1,3);

/* Query 2 */
SELECT faculty_id, title, status FROM faculty WHERE status="Full Time";

/* Query 3 */
SELECT staff_id, last_name, salary FROM staff WHERE last_name LIKE 'C%';

/* Query 4 */
SELECT last_name, first_name, salary FROM staff WHERE salary BETWEEN 50000 AND 70000 ORDER BY salary ASC;

/* Query 5 */
SELECT course_id, sec_id, semester, year, building, room_number FROM section WHERE semester IN ('Fall', 'Spring') LIMIT 40;

/* Query 6 */
SELECT dept_name FROM dept WHERE building LIKE '%Palm%';

/* Query 7 */
SELECT student_id, course_id, sec_id, semester, year, grade FROM registration WHERE grade IS NULL;

/* Query 8 */
SELECT course_id, title FROM course WHERE title LIKE 'Intro%';

/* Query 9 */
SELECT course_id, sec_id, year, building FROM section WHERE semester = 'Fall';

/* Query 10 */
SELECT building, room_number, capacity FROM classroom WHERE capacity BETWEEN 30 AND 70;

/* Query 11 */
SELECT * FROM classroom WHERE building='Taylor' AND capacity > 30;

/* Query 12 */
SELECT last_name, dept_id FROM student WHERE NOT(last_name='Evan' OR last_name='William');

/* Query 13 */
SELECT first_name, last_name FROM staff WHERE date_hired LIKE '1990%';

/* Query 14 */
SELECT last_name, first_name, dept_id FROM student WHERE last_name LIKE '_o%';
