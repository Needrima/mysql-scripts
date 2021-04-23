-- unions are use to join rows from multiple tables
-- UNITING FROM THE SAME TABLE
-- the number of columns that each query returns must be equal
-- the final column will take the names of the columns in the first table
SELECT order_id, order_date, "ACTIVE" AS status
FROM orders 
WHERE order_date >= "2019-01-01"
UNION -- unites the results from the two queries
SELECT order_id, order_date, "ARCHIVE" AS status
FROM orders 
WHERE order_date < "2019-01-01"; 
-- UNITING FROM DIFFERENT TABLES
SELECT first_name, "customer" AS from_table
FROM customers
UNION
SELECT shipper_id, "shipper" AS from_table
FROM shippers;
-- another example
SELECT  customer_id, first_name, points, "Bronze" AS type
FROM customers
WHERE points < 2000
UNION
SELECT  customer_id, first_name, points, "Silver" AS type
FROM customers
WHERE points BETWEEN 2000 AND 3000
UNION
SELECT  customer_id, first_name, points, "Gold" AS type
FROM customers
WHERE points > 3000
ORDER BY first_name;

















