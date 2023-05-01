--Add 3 new artists to the artist table. 
INSERT INTO artist(name)
VALUES('Madonna'),
('Taylor Swift'),
 ('Nicki Minaj');

--Select 10 artists in reverse alphabetical order.
SELECT * FROM artist 
ORDER BY name DESC 
LIMIT 10;

-- Understanding LIMIT
-- get the 4 oldest
SELECT *
FROM person
ORDER BY age DESC
LIMIT 4

-- get the 2 youngest
SELECT *
FROM person
ORDER BY age ASC
LIMIT 2

--Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

--names that start with Black
SELECT *
FROM artist
WHERE name LIKE 'Black%'

--names that include Black
SELECT *
FROM artist
WHERE name LIKE '%Black%'