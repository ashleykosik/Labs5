--Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name VARCHAR(200),
    product_price FLOAT,
    quantity INTEGER
);

INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES(1, 'apple', 2.5, 3), --7.5
    (2, 'apple', 2.5, 1), --2.5
    (1, 'broccoli', 2.99, 2), --5.98
    (2, 'cauliflower', 3, 1), --3
    (1, 'bananas', 0.25, 10); --2.5

--SELECT ALL
SELECT * FROM orders

--TOTAL ITEMS SOLD
SELECT SUM(quantity) FROM orders - 17

--total order price / 21.48
SELECT SUM(product_price*quantity) FROM orders 

--total price for person 1 / 15.98
SELECT SUM(product_price*quantity) 
FROM orders
WHERE person_id = 1

--total price for person 2 / 5.5
SELECT SUM(product_price*quantity) 
FROM orders
WHERE person_id = 2