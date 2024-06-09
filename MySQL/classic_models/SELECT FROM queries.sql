-- SELECT Queries

USE classicmodels;
-- 1) Using the SELECT FROM statement to retrieve data from a single column
SELECT lastName
FROM employees;

-- 2) Using the SELECT FROM statement to query data from multiple columns
SELECT 
    lastName, 
    firstName, 
    jobTitle
FROM
    employees;

-- 3) Using the SELECT FROM statement to retrieve data from all columns
SELECT employeeNumber,
       lastName,
       firstName,
       extension,
       email,
       officeCode,
       reportsTo,
       jobTitle
FROM   employees;