-- the LIKE operator
-- used to get matches with a particular string 
-- two commonly used characters with the LIKE operator are "%" and "_"

SELECT * 
FROM customers
WHERE last_name 
LIKE "b%"; -- give customers with last name starting from b(case insensitive) 
-- "%d" results with specified field ending with "d"
-- "%a%" results with specified fields containing an "a" at any position

SELECT *
FROM customers
WHERE last_name
LIKE "_y"; -- customers whose lastname is exactly three characters ending two characters ending with "y"
-- number of underscores determine the number of characters that will preceed or proceed after the specified letter 
-- "___g__" means three charecters befor "g" and two characters after "g"