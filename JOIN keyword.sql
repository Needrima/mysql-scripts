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