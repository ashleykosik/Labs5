--Count how many orders were made from the USA.
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA'

--Find the largest order total amount.
SELECT *
FROM invoice
ORDER BY total DESC
LIMIT 1;
--OR
SELECT MAX(total) FROM invoice;

--Find the smallest order total amount.
SELECT *
FROM invoice
ORDER BY total ASC
LIMIT 1;
--OR
SELECT MIN(total) FROM invoice;

--Find all orders bigger than $5.
SELECT *
FROM invoice
WHERE total > 5

--Count how many orders were smaller than $5. = 233
SELECT COUNT(*)
FROM invoice
WHERE total < 5

--If we wanted the total $ from all orders under $5 = 536
SELECT SUM(total)
FROM invoice
WHERE total < 5

--Count how many orders were in CA, TX, or AZ (use IN). = 35
SELECT COUNT(*) FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ')

--Get the average total of the orders.
SELECT AVG(total) FROM invoice -- 5.7

--Get the total sum of the orders.
SELECT SUM(total) FROM invoice -- 2351

--Update the invoice with an invoice_id of 5 to have a total order amount of 24
UPDATE invoice
SET total = 24
WHERE invoice_id = 5

--Delete invoice_id 1
DELETE FROM invoice
WHERE invoice_id = 1