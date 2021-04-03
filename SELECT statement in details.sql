-- if the table is very large 
-- SELECTING * can put a lot of pressure on the server 
-- so we can just specify columns we want to select to reduce the pressure
-- the order specified from the slect statement is order data will appear
SELECT first_name, last_name -- first_name first, then last_name
FROM customers;

SELECT last_name, first_name, points
FROM customers;

-- arithemetic operations can be carried out also on columns
-- +(sum), -(difference), *(product), /(division). %(modulus)

SELECT last_name, first_name, points, points * 10
FROM customers;

-- operators preceddence are based on BODMAS 
-- can also break long lines

SELECT 
	last_name,
    first_name,
    points,
    points * 10 + 40 -- multiplication first, then addition
FROM customers;

-- parentheses can be used to group operations to simplify them

SELECT 
	last_name,
    first_name,
    points,
    (points + 10) / 40 -- addition first(cause of parentheses), then division
FROM customers;

-- the new column can be given an alias with the "AS" statement

SELECT 
	last_name,
    first_name,
    points,
    (points + 10) / 40 AS points_plus_10_divided_by_40 -- addition first(cause of parentheses), then division
FROM customers;

-- can use spaces instead of underscore but have to put them in quotes

SELECT 
	last_name,
    first_name,
    points,
    (points + 10) / 40 AS "points plus 10 divided by 40" -- addition first(cause of parentheses), then division
FROM customers;

-- data in a column can be changed by double clicking and applying the change
-- changed Barbara's state from MA to VA(Barbara and Ines are now from VA)
-- to select the unique states the DISTINCT clause is used

SELECT DISTINCT state
FROM customers; -- duplicate states will be shown once