-- USE sql_invoicing;

UPDATE invoices
SET payment_date = NULL, payment_total = 180.00
WHERE client_id = 3; -- every client with id 3

UPDATE invoices
SET payment_date = NULL, invoice_total = 180.00
WHERE invoice_id IN (3, 4); -- every client with id 3 and 4

-- USE sql_store;

UPDATE customers 
SET points = points + 50
WHERE birth_date < '1990-01-01';

-- using sub queries in update statement

-- USE sql_invoicing;
UPDATE invoices
SET payment_date = due_date
WHERE client_id = 
			(SELECT client_id 
			FROM clients
			WHERE name = 'Yadel');
            
UPDATE invoices
SET payment_date = due_date
WHERE client_id IN
			(SELECT client_id 
			FROM clients
			WHERE name IN ('Myworks','Kwideo'));  