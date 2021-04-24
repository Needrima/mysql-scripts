-- deletes everything from a database
DELETE FROM customers; 
-- deletes a particular portion
DELETE FROM customers
WHERE  name = 'Clemmie';

-- select sub query in delete statement
DELETE FROM orders
WHERE customer_id = (
			SELECT cutomer_id 
			FROM customers 
			WHERE customer_id = 3
);




