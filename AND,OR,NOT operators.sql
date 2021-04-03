-- AND operator
-- gives the results where all the conditions are met
SELECT *
FROM customers
WHERE birth_date >= "1990-01-01"
AND points > 1000; -- customers born after 1990 and with points of over 1000

-- OR operator
-- gives result for records where at least one of the conditions are met
SELECT *
FROM customers
WHERE birth_date >= "1990-01-01"
OR points > 1000; -- customers born after 1990 or with points of over 1000

SELECT *
FROM customers
WHERE birth_date >= "1990-01-01"
OR points > 1000
AND state = 'VA'; -- customers born after 1990 that lives in VA or with points of over 1000 that lives in in VA

-- in a situation where AND and OR operators are being combined, AND takes more Precedence;
-- order can be changed using parentheses;

-- NOT operator
-- it simply gives results for the opposite of the query after it
SELECT *
FROM customers
WHERE NOT (birth_date >= "1990-01-01"
OR points > 1000);

-- the above is same as saying
SELECT *
FROM customers
WHERE birth_date < "1990-01-01"
AND points <= 1000;
-- reason being NOT operation reverses all operators and conditions
-- inverse of >= is <
-- inverse of OR is AND
-- inverse of > is <= 