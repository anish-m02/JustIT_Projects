-- Part 1 Script file for sql_hr, sql_inventory, sql_invoicing, sql_store databases

-- Query 1 
USE sql_store;

SELECT 
    *
FROM
    customers
-- WHERE CUSTOMER_ID=1
order by first_name;

-- Query 2
SELECT 
    last_name, first_name, points, points + 10
FROM
    customers;
    
-- Task 1 
-- a) Using query 2 change the points to read times by 10 and plus 100
SELECT 
    last_name, first_name, points, (points*10) + 100
FROM
    customers;

-- b) Change the Query 2 code to create a discount factor so the table 
--    now shows a discount header and changing the (point + 10) *100
SELECT 
    last_name, first_name, points,
    (points + 10) * 100 AS discount_factor
FROM
    customers;

-- Task 2 
-- Write a SQL query to return all the products in our database in the 
-- result set. I want you to show columns; name, unit price, and new column 
-- called new price which is based on this expression, (unit price * 1.1)
SELECT 
    name,
    unit_price,
    ROUND((unit_price * 1.1), 2) AS new_price
FROM
    products;
    
-- Task 3 
-- Create a new query to find all the customers with a birth date of > '1990-01-01'
SELECT 
    *
FROM
    customers
WHERE
    birth_date >= '1990-01-01';
    
-- Task 4
-- Select sql_inventory
USE sql_inventory;

-- Find out the name of the product with most amount in stock
SELECT 
    *
FROM
    products
WHERE
    quantity_in_stock = (SELECT 
            MAX(quantity_in_stock)
        FROM
            products);

-- Task 5
-- Write a query to find out the name of the most expensive product.
SELECT 
    *
FROM
    products
WHERE
    unit_price = (SELECT 
            MAX(unit_price)
        FROM
            products);
            
-- Task 6
-- Select sql_store
USE sql_store;

-- Write a query to find out the first name, last name, address and the birthdate of the oldest customer.
SELECT 
    first_name, last_name, address, birth_date
FROM
    customers
WHERE
    birth_date = (SELECT 
            MAX(birth_date)
        FROM
            customers);