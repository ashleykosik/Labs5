--Create a table called person that records a person’s id, name, age, height in cm , city, favorite_color. id should be an auto-incrementing id/primary key

CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    age INTEGER,
    height FLOAT,
    city VARCHAR(100),
    favorite_color VARCHAR(100)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Ashley', 29, 5.0, 'Southfield', 'purple' ),
    ('Chase', 32, 5.8, 'Houston', 'green'),
    ('Dj', 38, 5.4, 'Pheonix', 'blue'),
    ('Brian', 27, 5.6, 'Novi', 'orange'),
    ('Maria', 25, 5.2, 'Miami', 'red'),
    ('Bob', 18, 6.0, 'New York', 'yellow');

-- Tallest to Shortest
SELECT height 
FROM person  
GROUP BY name
ORDER BY height DESC

--Shortest to Tallest
SELECT height 
FROM person  
ORDER BY height ASC

--Oldest to Youngest
SELECT age
FROM person  
ORDER BY age DESC

-- ALL ABOVE 20
SELECT *
FROM person  
WHERE age > 20

--ALL THAT ARE 18
SELECT *
FROM person  
WHERE age = 18

-- AGES OVER 20 UNDER 30
SELECT *
FROM person  
WHERE age BETWEEN 20 AND 30

--SELECT ALL NOT 27
SELECT *
FROM person  
WHERE age <> 27

--not red
SELECT *
FROM person  
WHERE favorite_color <> 'red'

-- not red or blue
SELECT *
FROM person  
WHERE favorite_color <> 'red' AND favorite_color <> 'blue'

--OR
SELECT *
FROM person  
WHERE favorite_color ='orange' OR favorite_color ='green'

--List Operator
SELECT *
FROM person  
WHERE favorite_color IN ( 'orange', 'green', 'blue' );

SELECT *
FROM person  
WHERE favorite_color IN ( 'yellow', 'purple' );