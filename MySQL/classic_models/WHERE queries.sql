-- WHERE Queries

USE classicmodels;
-- 1) Using the WHERE clause with equality operator
SELECT 
    lastname, firstname, jobtitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';

-- 2) Using the WHERE clause with the AND operator
SELECT 
    lastname, firstname, jobtitle,officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' AND 
    officeCode = 1;
    
-- 3) Using MySQL WHERE clause with OR operator
SELECT 
    lastName, firstName, jobTitle, officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' OR 
    officeCode = 1
ORDER BY 
    officeCode , 
    jobTitle;

-- 4) Using the WHERE clause with the BETWEEN operator    
SELECT 
    firstName, lastName, officeCode
FROM
    employees
WHERE
    officeCode BETWEEN 1 AND 3
ORDER BY officeCode;

-- 5) Using the WHERE clause with the LIKE operator
SELECT 
    firstName, lastName
FROM
    employees
WHERE
    lastName LIKE '%son'
ORDER BY firstName;

-- 6) Using the WHERE clause with the IN operator
SELECT 
    firstName, lastName, officeCode
FROM
    employees
WHERE
    officeCode IN (1 , 2, 3)
ORDER BY 
    officeCode;
    
-- 7) Using MySQL WHERE clause with the IS NULL operator
SELECT 
    lastname, firstname, reportsTo
FROM
    employees
WHERE
    reportsTo IS NULL;
    
-- 8) Using MySQL WHERE clause with comparison operators
SELECT 
    lastname, firstname, jobtitle
FROM
    employees
WHERE
    jobtitle <> 'Sales Rep';
    
SELECT 
    lastname, firstname, officeCode
FROM
    employees
WHERE 
    officecode > 5;
    
SELECT 
    lastname, firstname, officeCode
FROM
    employees
WHERE 
    officecode <= 4;