-- ==========================================================
-- WORLD DATABASE PRACTICE
-- Database Used: world
-- Topics Covered:
-- SELECT, ROUND, ALIAS, ORDER BY, LIMIT, OFFSET,
-- WHERE, Relational Operators, Logical Operators
-- ==========================================================

USE world;

-- ==========================================================
-- VIEW TABLES
-- ==========================================================

SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countrylanguage;

-- ==========================================================
-- BASIC SELECT QUERIES
-- ==========================================================

SELECT 
    Code,
    Name,
    Continent,
    Region,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP
FROM country;

-- Population Density
SELECT 
    Code,
    Name,
    Continent,
    Region,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP,
    ROUND(Population / SurfaceArea, 2) AS pop_density
FROM country;

-- GNP per Capita
SELECT 
    Code,
    Name,
    Continent,
    Region,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP,
    ROUND(Population / SurfaceArea, 2) AS pop_density,
    ROUND(GNP * 1000000 / Population) AS GNP_per_capita
FROM country;

-- ==========================================================
-- TOP COUNTRIES BY PER CAPITA INCOME
-- ==========================================================

SELECT 
    Name,
    Continent,
    Population,
    GNP,
    ROUND(GNP * 1000000 / Population, 2) AS per_capita_income
FROM country
ORDER BY per_capita_income DESC
LIMIT 1;

-- Top 10 Countries by Population Density
SELECT 
    Code,
    Name,
    Continent,
    Region,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP,
    ROUND(Population / SurfaceArea, 2) AS pop_density
FROM country
ORDER BY pop_density DESC
LIMIT 10;

-- Top 12 Countries by Per Capita Income
SELECT 
    Name,
    Continent,
    Population,
    GNP,
    ROUND(GNP * 1000000 / Population, 2) AS per_capita_income
FROM country
ORDER BY per_capita_income DESC
LIMIT 12;

-- ==========================================================
-- LIMIT & OFFSET (Ranking 11 to 15)
-- ==========================================================

SELECT 
    Name,
    Continent,
    Population,
    GNP,
    ROUND(GNP * 1000000 / Population, 2) AS per_capita_income
FROM country
ORDER BY per_capita_income DESC
LIMIT 5 OFFSET 10;

-- ==========================================================
-- FILTERING DATA (WHERE CLAUSE)
-- ==========================================================

-- Countries where GNP > 100000
SELECT 
    Name,
    Continent,
    Population,
    GNP,
    ROUND(GNP * 1000000 / Population, 2) AS per_capita_income
FROM country
WHERE GNP > 100000
ORDER BY per_capita_income DESC;

-- Cities with Population > 10 Million
SELECT * 
FROM city
WHERE Population > 10000000;

-- Cities with Population <= 10 Million
SELECT * 
FROM city
WHERE Population <= 10000000;

-- Countries with Life Expectancy <= 70
SELECT 
    Name,
    Continent,
    LifeExpectancy AS LE
FROM country
WHERE LifeExpectancy <= 70
ORDER BY LE DESC;

-- Countries where Life Expectancy = 70
SELECT 
    Name,
    Continent,
    LifeExpectancy AS LE
FROM country
WHERE LifeExpectancy = 70;

-- Countries where Life Expectancy <> 70
SELECT 
    Name,
    Continent,
    LifeExpectancy AS LE
FROM country
WHERE LifeExpectancy <> 70;

-- ==========================================================
-- ORDER BY EXAMPLES
-- ==========================================================

-- Order by Life Expectancy Descending
SELECT 
    Name,
    Continent,
    Region,
    SurfaceArea,
    LifeExpectancy
FROM country
ORDER BY LifeExpectancy DESC;

-- Order by Continent Descending
SELECT 
    Name,
    Continent,
    Region,
    SurfaceArea,
    LifeExpectancy
FROM country
ORDER BY Continent DESC;

-- Order by Multiple Columns
SELECT 
    Name,
    Continent,
    Population,
    GNP,
    ROUND(GNP * 1000000 / Population, 2) AS per_capita_income
FROM country
ORDER BY Continent, per_capita_income DESC;

-- ==========================================================
-- LOGICAL OPERATORS (AND / OR)
-- ==========================================================

-- All Asian Countries
SELECT 
    Name,
    Continent,
    IndepYear,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP
FROM country
WHERE Continent = "Asia"
ORDER BY Name DESC;

-- Asian Countries with Population > 10 Million
SELECT 
    Name,
    Continent,
    IndepYear,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP
FROM country
WHERE Continent = "Asia"
AND Population > 10000000
ORDER BY Name DESC;

-- Countries in Asia OR Population > 10 Million
SELECT 
    Name,
    Continent,
    IndepYear,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP
FROM country
WHERE Continent = "Asia"
OR Population > 10000000
ORDER BY Name DESC;

-- Countries in Asia, Europe, Africa
SELECT 
    Name,
    Continent,
    IndepYear,
    SurfaceArea,
    Population,
    LifeExpectancy,
    GNP
FROM country
WHERE Continent IN ("Asia", "Europe", "Africa")
ORDER BY Continent;
