CREATE TABLE orders_archive AS
SELECT * FROM orders;

-- to get only a particular set of data
-- if the command above was run first, truncate table orders_archive to clear all the data in it.
INSERT INTO orders_archive
SELECT * 
FROM orders
WHERE order_date < '2019-01-01';

CREATE TABLE invoices_archive AS
SELECT i.invoice_id, i.number, c.name, i.invoice_total, i.payment_total, c.phone 
FROM invoices i
JOIN clients c
	ON i.client_id = c.client_id;





















