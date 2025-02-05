-- SOLUTIONS TO WEEK 2 SESSION 1 TASKS
-- SELECT EACH SQL STATEMENT TO RUN IN TURN AND REVIEW THE OUTPUT  
-- WORKBENCH WILL CREATE A NEW OUPUT WINDOW FOR EACH QUERY */
   
-- TASK 2 - SELECT A TABLE 
-- 1
USE sql_store;
-- 2
SELECT * FROM customers;
-- 3
SELECT first_name, last_name, points FROM customers;
-- 4
SELECT first_name, last_name, points
FROM customers
WHERE customer_id = 2
ORDER BY last_name; 
-- 5
SELECT last_name, points, first_name
FROM customers;

-- TASK 3 - MATHS OPERATORS
SELECT name, unit_price, unit_price*1.1 AS new_unit_price
FROM products;

-- TASK 4 - CONDITIONAL OPERATORS
SELECT *
FROM order_items
WHERE order_id = 6 AND quantity * unit_price > 30;

-- TASK 5 - CONDITIONAL OPERATORS
SELECT *
FROM products
WHERE quantity_in_stock IN (49,38,72);

SELECT * 
FROM customers
WHERE birth_date BETWEEN "1990/01/01" AND "2000/01/01";

SELECT *
FROM customers 
WHERE (address LIKE "%trail%" OR address LIKE "%avenue%") AND phone LIKE "%9";

-- TASK 6 - CONDITIONAL OPERATORS
-- 1
SELECT * 
FROM customers
WHERE first_name REGEXP "elka|ambur";
-- 2
SELECT * 
FROM customers 
WHERE last_name REGEXP "ey$|on$";
-- 3
SELECT * 
FROM customers 
WHERE last_name REGEXP "my$|se";
-- 4
SELECT * 
FROM customers 
WHERE last_name REGEXP "b[ru]";
-- 5
SELECT *
FROM orders
WHERE shipped_date IS NULL;

-- TASK 7 - ORDER BY
-- 1
SELECT *
FROM orders
WHERE order_id=2
ORDER BY quantity * unit_price DESC;
-- 3
SELECT *
FROM customers 
ORDER BY points DESC
LIMIT 3;

-- TASK 8 - JOINS
SELECT order_id, products.product_id, products.name, order_items.quantity, products.unit_price
FROM order_items 
JOIN products 
ON order_items.product_id = products.product_id;
