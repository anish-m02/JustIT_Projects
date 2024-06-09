-- NULL Operator

USE classicmodels;
-- 1) Using IS NULL Operator
SELECT 
    customerName, country, salesrepemployeenumber
FROM
    customers
WHERE
    salesrepemployeenumber IS NULL
ORDER BY 
    customerName;
    
-- 2) Using IS NOT NULL operator
SELECT 
    customerName, country, salesrepemployeenumber
FROM
    customers
WHERE
    salesrepemployeenumber IS NOT NULL
ORDER BY 
   customerName;