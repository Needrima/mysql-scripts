SELECT * 
FROM customers
ORDER BY first_name; -- ascending alphabetical order from A-Z

-- use the DESC keyword to change order to descending order
SELECT * 
FROM customers
ORDER BY first_name DESC; -- descending alphabetical order from A-Z

SELECT * 
FROM customers
ORDER BY state, first_name; -- sort by state first and the first name is two states are the same

SELECT * 
FROM customers
ORDER BY state DESC, first_name; -- sort by state first in descending order and then first name is two states are the same

SELECT * 
FROM customers
ORDER BY state, first_name DESC; -- sort by state first and then first name is two states are the same in descending order

SELECT phone, points * 2 AS twice_points 
FROM customers
ORDER BY state, first_name DESC; -- sort by state first and then first name is two states are the same in descending order

SELECT *
FROM order_items
WHERE order_id = 2 
ORDER BY quantity * unit_price DESC;
ORDER BY ;