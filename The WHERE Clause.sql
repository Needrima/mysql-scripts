-- used to filter query

SELECT *
FROM customers
WHERE points > 3000;

-- can also filter with date
-- the standard format for writing dates in MySQL is 'YYYY-MM-DD'

SELECT *
FROM customers
WHERE birth_date > '1990-01-01'; -- after 1st January 1990

SELECT *
FROM orders
WHERE order_date >= '2019-01-01';
