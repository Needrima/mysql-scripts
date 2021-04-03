-- the IN operator is used to combine multiple or statements
-- instead of 
SELECT *
FROM customers
WHERE state = 'VA' OR state = 'CO' OR state = 'FL';
-- we can use IN to combine it

SELECT *
FROM customers
WHERE state IN ('VA', 'CO', 'FL'); -- order does not matter;

-- can also combine it with NOT opeartor
SELECT *
FROM customers
WHERE state NOT IN ('VA', 'CO', 'FL'); -- order does not matter

SELECT * 
FROM products
WHERE quantity_in_stock IN (49, 38, 72);