-- Part 2 Script file for 'world' database

-- Task 1
-- Using COUNT, get the number of cities in the USA
SELECT 
    COUNT(*)
FROM
    city
WHERE
    CountryCode = 'USA';

-- Task 2
-- Find out what the population and average life expectancy Argentina (ARG) is
SELECT 
    Code, Name, Population, LifeExpectancy
FROM
    country
WHERE
    code = 'Arg';
    
-- Task 3
-- Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT 
    code, name, LifeExpectancy
FROM
    country
ORDER BY LifeExpectancy DESC
LIMIT 1;

-- Task 4
-- Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT 
    *
FROM
    city
WHERE
    Name LIKE 'F%'
LIMIT 25;

-- Task 5
-- Create a SQL statement to display columns Id, Name, Population from the city table and 
-- limit results to first 10 rows only.
SELECT 
    id, name, Population
FROM
    city
LIMIT 10;

-- Task 6
-- Create a SQL statement to find only those cities from city table whose population is larger than 2000000.
SELECT 
    *
FROM
    city
WHERE
    Population > 2000000;
    
-- Task 7
-- Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
SELECT 
    ID, Name, CountryCode
FROM
    city
WHERE
    name LIKE 'Be%';
    
-- Task 8
-- Create a SQL statement to find only those cities from city table whose population is between 500000-1000000.
SELECT 
    *
FROM
    city
WHERE
    Population >= 500000
        AND Population <= 1000000;
        
-- Task 9
-- Create a SQL statement to find a city with the lowest population in the city table.
SELECT 
    *
FROM
    city
ORDER BY Population ASC
LIMIT 1;

-- Further Tasks
-- Task 4 
-- Create a SQL statement to display columns Id, Name, Population from the city table and limit results to rows 31-40
SELECT 
    ID, Name, Population
FROM
    city
LIMIT 10 OFFSET 30;

-- Task 9
-- Create a SQL statement to display all cities from the city table sorted by Name in ascending order
SELECT 
    *
FROM
    city
ORDER BY name ASC;

-- Task 11
-- Create a SQL statement to find a country with the largest population in the country table
SELECT 
    *
FROM
    country
ORDER BY Population DESC
LIMIT 1;

-- Bonus JOIN Questions
-- Task 1
-- Create a SQL statement to find the capital of Spain (ESP)
SELECT 
    country.Code, country.Name, city.Name
FROM
    country
        INNER JOIN
    city ON country.capital = city.ID
WHERE
    country.name = 'Spain';

-- Task 2
-- Create a SQL statement to list all the languages spoken in the Caribbean region
SELECT DISTINCT
    country.Region, countrylanguage.Language
FROM
    countrylanguage
        INNER JOIN
    country ON country.code = countrylanguage.CountryCode
WHERE
    country.region = 'Caribbean';
    
-- Task 3
-- Create a SQL statement to find all cities from the Europe continent
SELECT 
    country.name as Country, 
    city.name as City
FROM
    country
        INNER JOIN
    city ON country.code = city.CountryCode
WHERE
    country.Continent = 'Europe';