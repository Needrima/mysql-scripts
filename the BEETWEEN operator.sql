-- the BEETWEEN key word is used to combine and statements
-- instead of 
SELECT *
FROM customers
WHERE points >= 1000
AND points <= 3000;
-- we can do
SELECT *
FROM customers
WHERE points 
BETWEEN 1000 AND 3000;

SELECT *
FROM customers
WHERE birth_date 
BETWEEN '1990-01-01' AND '2000-01-01'; -- recall dates follow the pattern 'yyyy-mm-dd'

