-- join is used to join tables 
SELECT * 
FROM customers
JOIN orders; -- this joins the tables customers and orders and get all the results

SELECT customer_id 
FROM customers
JOIN orders; -- this will throw an because customer_id is present in both customers and orders table

-- to fix the error, specify the table for customer_id
SELECT *, customers.customer_id -- or orders.customer_id
FROM customers
JOIN orders;

-- can also JOIN ON columns from the two database to align duplicate column
-- this aligns the column customer_id from both table orders and customers 
SELECT *
FROM customers
JOIN orders
ON orders.customer_id = customers.customer_id;
	
-- tables can also be aliased to reduce ambiguity
-- to alias table put the alias name after the table name
SELECT first_name, last_name, c.customer_id
FROM customers c
JOIN orders 
ON o.customer_id = c.customer_id;
-- another example
SELECT o.product_id, name, quantity, o.unit_price
FROM order_items o
JOIN products p
	ON o.product_id = p.product_id;
-- tables can also be joined across databases
-- to join to a table in another database just prefix the table name with its database name

SELECT o.product_id, name, quantity, o.unit_price
FROM order_items o
JOIN sql_inventory.products p
	ON o.product_id = p.product_id;
    
-- a table can also be joined to itself
-- this is called a self join
USE sql_hr;

SELECT *
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;
    
SELECT e.employee_id, e.first_name, m.first_name AS manager
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;

-- multiple tables can also be joined

SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id
JOIN order_statuses os
	ON o.status = os.order_status_id;
    
-- USE sql_invoicing;
-- SHOW tables;
SELECT c.name, p.payment_id, pm.name
FROM payment_methods pm
JOIN payments p
	ON pm.payment_method_id = p.payment_method
JOIN clients c
	ON p.client_id = c.client_id;
    
-- COMPOUND JOIN CONDITIONS
-- used when to or more columns exist in two or more tables
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id;
    
-- IMPLICIT JOIN
-- instead of
SELECT * 
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
-- we can join implicity by
SELECT * 
FROM orders o, customers c
WHERE o.customer_id = c.customer_id; 
-- implicity join is not a good practice because forgetting the where clause might give a totally different result
-- the explicit join forces us to explicitly state the join condition

-- OUTER JOIN
-- outer joins betweem two tables
-- the query below gives the results for all customer related columns and assign null for
-- their order cell if no there is no data
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o -- or LEFT OUTER JOIN orders o(outer keyword is optional)
	ON o.customer_id = c.customer_id;
-- the query below gives the results for all ORDER related columns and assign null for
-- their customer cell if no there is no data
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
RIGHT JOIN orders o -- or RIGHT OUTER JOIN orders o(outer keyword is optional)
	ON o.customer_id = c.customer_id;
    
-- OUTER JOINS BETWEEN MULTIPLE TABLES
 -- It is advisable to use aleft joins only when using outer joins to join multiple tables
SELECT c.customer_id, c.first_name, o.order_id, sh.name AS shipper
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh -- left joining to include all shippers including those with no data
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

SELECT o.order_date, o.order_id, c.first_name, sh.name AS shipper, os.name AS status
FROM customers c
LEFT JOIN orders o
	ON c.customer_id = o.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
JOIN order_statuses os
	ON o.status = os.order_status_id; 
    
-- SELF OUTER JOINS
-- USE sql_hr;
SELECT e.first_name, e.job_title, e.salary, e.reports_to, m.first_name AS manager
FROM employees e
LEFT JOIN employees m
	ON e.reports_to = m.employee_id;
    
-- USING keyword
-- used when the join condition columns are exactly the same in both tables
-- can be used with both INNER and OUTER JOIN
SELECT o.order_id, c.first_name, s.name AS shipper
FROM customers c
JOIN orders o
	-- ON c.customer_id = o.customer_id
    USING (customer_id)
LEFT JOIN shippers s
	-- ON c.shipper_id = s.shipper_id
    USING (shipper_id);
-- to do a composite join, specify all the join coditions seperated by a comma
SELECT *
FROM order_item oi
LEFT JOIN order_item_notes oin	
	USING(order_id, product_id);
    
-- NATURAL JOINS
-- NATURAL JOIN searches and merge the all the common tables automatically
-- using NATURAL JOIN is discouraged
 SELECT c.first_name, o.order_id
 FROM customers c
 NATURAL JOIN orders o;
 
 -- CROSS JOINS
 -- Used to match everthing from the first table to everything from the second table
 -- So there is no ON condition
 -- EXPLICIT CROSS JOIN
 -- the next two queries will give the same result
 SELECT c.first_name AS customer, p.name AS product
 FROM customers c
 CROSS JOIN products p
 ORDER BY c.first_name; 
 -- IMPLICIT CROSS JOIN
 SELECT c.first_name AS customer, p.name AS product
 FROM customers c, products p
 ORDER BY c.first_name;

        



    
    
    
    
    
    







