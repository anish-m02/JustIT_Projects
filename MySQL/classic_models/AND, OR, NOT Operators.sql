-- AND, OR, NOT Operators

USE classicmodels;
-- 1) AND Example
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';

-- 2) OR Example
SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';

SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

-- 3) NOT Example
SELECT * FROM Customers
WHERE NOT Country = 'Germany';

-- 4) Combining AND, OR and NOT
SELECT * FROM Customers
WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'Stuttgart');

SELECT * FROM Customers
WHERE NOT Country = 'Germany' AND NOT Country = 'USA';

SELECT 
    customername, country, state
FROM
    customers
WHERE
    country = 'USA' AND state = 'CA';