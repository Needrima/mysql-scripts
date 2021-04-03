-- the REGEXP operator has same functions as LIKE but with more powerful character matches
SELECT *
FROM customers 
WHERE last_name
REGEXP "a|b|c"; -- characters containing "a" or "b" or "c" at any position
-- "^a|b$|c" characters starting with "a" or ending with "b" or having "c" at any position
-- Google regular expressions to see more info about REGEXP strings