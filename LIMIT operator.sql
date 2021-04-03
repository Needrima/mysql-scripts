SELECT *
FROM customers
LIMIT 3; -- picks the first three rows in customers table

-- to skip rows
SELECT *
FROM customers
LIMIT 6, 3; -- means skip the first 6 data and give the next three

SELECT *
FROM customers
ORDER BY points DESC
LIMIT 3; -- customers woth highest points(most loyal cutomers)