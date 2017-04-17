--# Database "world" contains: name, continent, area, population and gdp
--# 1. Show the population of Germany
SELECT population 
FROM world
WHERE name = 'Germany'

--# 2. Show the name and the population for 'Sweden', 'Norway' and 'Denmark'
SELECT name, population 
FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark')

--# 3. Show the conturies with an area between 200,000 and 250,000
SELECT name, area 
FROM world
WHERE area BETWEEN 200000 AND 250000
