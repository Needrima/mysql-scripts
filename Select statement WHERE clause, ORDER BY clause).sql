use sql_store;

SELECT *
FROM customers; -- gets all data in table

SELECT first_name
FROM customers; -- gets all data in table with first_name column

-- WHERE clause can be added to filter select statement

SELECT *
FROM customers
WHERE customer_id = 1; -- get all data from table with customer_id 1

-- ORDER BY clause can be added to get
SELECT * 
FROM customers
ORDER BY phone; -- gets data and orders alphabetically by first_name or numerical order if column contains numbers

-- FROM, WHERE and ORDER BY are optional. can also do

SELECT 1, 2 -- gives to columns with name 1, 2 and data 1, 2 respectively