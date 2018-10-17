/* nalcus_assignment4.sql
   Nicholas Alcus
   CS 150A, Fall 2018
*/

/* Query 0 */
SELECT user(), current_date();
USE library;

/* Query 1 */
CREATE TABLE computer(serial_number INT(7) PRIMARY KEY, make VARCHAR(7), model VARCHAR(25), processor_type VARCHAR(25), memory_type VARCHAR(16), disk_size VARCHAR(16));
DESCRIBE computer;

/* Query 2 */
INSERT INTO COMPUTER VALUES(9871234, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530','6.0 GBytes', '1.0 TBytes');
INSERT INTO COMPUTER VALUES(9871245, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530','6.0 GBytes', '1.0 TBytes');
INSERT INTO COMPUTER VALUES(9871256, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530','6.0 GBytes', '1.0 TBytes');
INSERT INTO COMPUTER VALUES(9871267, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530','6.0 GBytes', '1.0 TBytes');
INSERT INTO COMPUTER VALUES(9871278, 'HP', 'Pavilion 500-210qe', 'Intel i5-4530','6.0 GBytes', '1.0 TBytes');

/* Query 3 */
ALTER TABLE computer ADD COLUMN processor_speed DECIMAL;

/* Query 4 */
SELECT * FROM computer;

/* Query 5 */
DESCRIBE computer;

/* Query 6 */
ALTER TABLE computer DROP COLUMN processor_speed;

/* Query 7 */
ALTER TABLE computer RENAME computer_backup;

/* Query 8 */
SHOW TABLES;

/* Query 9 */
DROP TABLE computer_backup;
SHOW TABLES;

/* Query 10 */
ALTER TABLE branch ADD COLUMN phone_number VARCHAR(14);

/* Query 11 */
ALTER TABLE branch DROP COLUMN phone_number;
