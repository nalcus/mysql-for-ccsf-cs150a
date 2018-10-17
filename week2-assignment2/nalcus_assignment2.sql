/* Assignment 2.sql
  Nicholas Alcus
   CS 150A, Fall 2018
*/

/* put the database name into this command */


/* Query 0 */
SELECT user(), current_date();
USE university;

/* Query 1 */
SELECT last_name, first_Name, salary FROM staff;

/* Query 2 */
SELECT DISTINCT building FROM classroom;

/* Query 3 */
SELECT * FROM section;

/* Query 4 */
SELECT course_id, title, credits FROM course WHERE credits=4;

/* Query 5 */
SELECT last_name, first_name FROM staff ORDER BY date_hired DESC LIMIT 10;

/* Query 6 */
SELECT * FROM faculty WHERE faculty_id <> 78699;

/* Query 7 */
SELECT first_name, last_name, tot_cred FROM student ORDER BY tot_cred;

/* Query 8 */
SELECT dept_id, dept_name, budget FROM dept;

/* Query 9 */
SELECT staff_id, address, CONCAT(city, ', ', state) AS citystate, zip_code FROM staff;

/*  Query 10 */
SELECT last_name, salary, staff_id FROM staff WHERE salary<70000;

/* Query 11 */
SELECT DISTINCT title FROM course;

/* Query 12 */
SELECT CONCAT("student_id: ", student_id) AS studentid, CONCAT("sec_id: ", sec_id) AS secid, CONCAT("semester: ", semester) AS sem, CONCAT("year: ", year) AS Y FROM registration LIMIT 20;
