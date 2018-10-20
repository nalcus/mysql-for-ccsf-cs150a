/* nalcus_assignment7.sql
   Nicholas Alcus
   CS 150A, Fall 2018
*/

/* Query 0 */
SELECT user(), current_date();
USE bookstore;

/* Query 1 */
SELECT category_name, product_name, list_price FROM category JOIN product
  USING (category_id) ORDER BY category_name, product_name ASC;

/* Query 2 */
SELECT first_name, last_name, line1, city, state, zip_code FROM customer JOIN
  address USING (customer_id) WHERE email_address='allan.sherwood@yahoo.com'
	GROUP BY line1;

/* Query 3 */
SELECT first_name, last_name, line1, city, state, zip_code FROM customer AS c
  JOIN address AS a ON (c.shipping_address_id=a.address_id);

/* Query 4 */
SELECT last_name, first_name, order_date, product_name, item_price, quantity
  FROM customer AS c JOIN (orders AS o, orderitems AS oi, product AS p) ON
	(c.customer_id=o.customer_id AND o.order_id=oi.order_id AND
	oi.product_id=p.product_id) ORDER BY last_name, order_date;

/* Query 5 */
SELECT DISTINCT p1.product_name, p2.list_price FROM product AS p1 JOIN
  product AS p2 ON (p1.list_price = p2.list_price AND
  p1.product_id <> p2.product_id) ORDER BY p1.product_name;

/* Query 6 */
SELECT product_id, product_name, list_price, company_name, category_name FROM product p
  JOIN (vendor v , category c ) ON p.vendor_id=v.vendor_id AND
  c.category_id=p.category_id ORDER BY product_id;

/* Query 7 */
SELECT product_id, product_name, list_price FROM product p
  JOIN category c ON c.category_id=p.category_id WHERE
  category_name = 'Computer'
  ORDER BY product_id;

/* Query 8 */
SELECT o.order_id, order_date, product_name, quantity, (item_price*quantity)
AS amount FROM orders o JOIN
  (orderitems oi, product p)
  ON o.order_id=oi.order_id AND p.product_id=oi.product_id;

/* Query 9 */
SELECT c.first_name, c.last_name, o.order_id, o.order_date, o.ship_date FROM 
  customer c JOIN orders o ON c.customer_id=o.customer_id WHERE o.ship_date IS NULL
  ORDER BY o.order_date;

/* Query 10 */
SELECT c.last_name, c.first_name FROM customer c JOIN (orders o, orderitems oi)
  ON c.customer_id=o.customer_id AND o.order_id=oi.order_id
  WHERE oi.item_price > 1500;

/* Query 11 */
SELECT p.product_name FROM product p JOIN (orderitems oi, orders o, customer c)
ON p.product_id=oi.product_id AND oi.order_id=o.order_id
AND o.customer_id=c.customer_id
WHERE c.first_name='Christine' AND c.last_name='Brown';
