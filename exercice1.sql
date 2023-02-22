--Create items table
CREATE TABLE items (
  item_id SERIAL PRIMARY KEY,
  item_name VARCHAR(50) NOT NULL,
  price INTEGER NOT NULL
);
--insert value into items
INSERT INTO items (item_name, price)VALUES 
('Small Desk', 100),
('Large Desk', 300),
('Fan', 80);
--create customers table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL
);
--insert into customers table
INSERT INTO customers (first_name, last_name)
VALUES 
('Greg', 'Jones'),
('Sandra', 'Jones'),
('Scott', 'Scott'),
('Trevor', 'Green'),
('Melanie', 'Johnson');


-- Fetch all the items
SELECT * FROM items;

-- Fetch all the items with a price above 80 (80 not included)
SELECT * FROM items WHERE price > 80;

-- Fetch all the items with a price below 300 (300 included)
SELECT * FROM items WHERE price <= 300;

-- Fetch all customers whose last name is ‘Smith’
SELECT * FROM customers WHERE last_name = 'Smith';

-- Fetch all customers whose last name is ‘Jones’
SELECT * FROM customers WHERE last_name = 'Jones';

-- Fetch all customers whose first name is not ‘Scott’
SELECT * FROM customers WHERE first_name != 'Scott';







--c'est ici l'exo en question commence mais vu que c'est une continuité du xp precedent voilà

--All items, ordered by price (lowest to highest).
SELECT * FROM items ORDER BY price ASC;

--Items with a price above 80 (80 included), ordered by price (highest to lowest).
SELECT * FROM items WHERE price >= 80 ORDER BY price DESC;

--The first 3 customers in alphabetical order of the first name (A-Z) – exclude the primary key column from the results.
SELECT first_name, last_name FROM customers ORDER BY first_name ASC LIMIT 3;

--All last names (no other columns!), in reverse alphabetical order (Z-A)
SELECT last_name FROM customers ORDER BY last_name DESC;

