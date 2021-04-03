SELECT *
FROM customers
WHERE phone IS NULL; -- customers without phone number

SELECT *
FROM customers
WHERE phone IS NOT NULL; -- customers with phone number

SELECT * 
FROM orders
WHERE shipped_date
IS NOT NULL; -- orders that have been shipped

SELECT * 
FROM orders
WHERE shipped_date
IS NULL; -- orders that have not been shipped