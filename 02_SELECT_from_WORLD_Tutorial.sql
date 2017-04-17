--# World database with features: name, continent, area, population, gdp

--# 1. Show the name continent and population of all countries
SELECT name, continent, population
FROM world

--# 2. Show the name for the countries that have a population of at least 200000000(200 million)
SELECT name FROM world 
WHERE population >= 200000000

--# 3. Show the name and per capita GDP for those countries with a population >= 200 million
SELECT name, gdp/population
FROM world
WHERE population >= 200000000

--# 4. Show the name and population in millions for the countries of continent 'South America'
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

--# 5. Show the name and population for France, Germany, Italy
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

--# 6. Show the contries which have a name that includes the word 'United'
SELECT name 
FROM world
WHERE name LIKE '%United%'

--# 7. Show the countries that are big area(3 million) or big by population(250 million), show name, population and area
SELECT name, population, area
FROM world
WHERE population >= 250000000 OR area >= 3000000

--# 8. XOR. Show the countries that are big by area or big by population, but not both. Show name, population and area
SELECT name, population, area
FROM world
WHERE population >= 250000000 XOR area >= 3000000

--# 9. Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'
SELECT name, ROUND(popuation/1000000,2), ROUND(gdp/1000000000,2) 
FROM world
WHERE continent = 'South America'

--# 10. Show the name and per-capita GDP for those countries with a GDP of at least one trillion(12 zeros), 
--#     round values to the nearest 1000
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000

--# 11. Show the name and capital where the name and the capital have the same number of characters
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

--# 12. Show the name and the capital where the first letters of each match. Don't include countries where the name and the 
--#     capital are same word
SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1)
  AND name <> capital
  
--# 13. Find the country that has all the vowels and no spaces in its name
SELECT name
FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %'
  
