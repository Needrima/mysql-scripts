-- INSERT keyword is used to insert data into tables  

-- Inserting a single row
INSERT INTO customers
VALUES(
	DEFAULT,
    'Peter',
    'Parker',
    '1998-01-01',
    '801-111-1111',
    '1 Simon street',
	'City',
    'CA',
    DEFAULT); -- order by column names 
    
-- to insert info specific column; specify the columns after the table name
INSERT INTO customers (
	first_name, 
    last_name, 
    city, 
    state)
VALUES(
	'Peter',
    'Parker',
    'City',
    'CA'); -- order by column names 
    
-- Inserting multiple rows
INSERT INTO shippers (name)
VALUES ('shipper1'),
	   ('shipper2'),
	   ('shipper3');
INSERT INTO products(name, quantity_in_stock, unit_price)
VALUES ('Orange Juice', 20, 1.21),
	   ('Apple Juice', 15, 1.31),
       ('Lemon Juice', 25, 1.41);
       
-- Inserting hierarchial rows
INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2015-02-07', 1);

INSERT INTO order_items
VALUES (LAST_INSERT_ID(), 3, 7, 3.25),
	   (LAST_INSERT_ID(), 4, 10, 1.70);















