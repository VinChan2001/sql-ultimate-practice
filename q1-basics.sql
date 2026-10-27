use MyDatabase;

-- retrieve first name, country, and score from the customers table

SELECT first_name, country, score 
FROM customers;

-- where is used to filter rows based on a condition
SELECT first_name, country, score 
FROM customers
WHERE score > 50;

-- where is used to filter rows based on multiple conditions
SELECT first_name, country, score 
FROM customers
WHERE score > 50
AND country = 'USA';

-- order by example
SELECT first_name, country, score 
FROM customers
ORDER BY score DESC;

-- order by example with ascending order
SELECT first_name, country, score 
FROM customers
ORDER BY score ASC;

-- order by example with multiple columns
SELECT first_name, country, score 
FROM customers
ORDER BY country ASC, score DESC;

-- aggregates a column by another column using group by
SELECT country, SUM(score) AS total_score
FROM customers
GROUP BY country;

-- aggregates a column by another column using group by with a condition
SELECT country, SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score) > 100;

-- aggregates a column by another column using group by with a condition and order by
SELECT country, SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score) > 100
ORDER BY total_score DESC;

-- aggregates a column by another column using group by with a condition, order by, and limit
SELECT TOP 5 country, SUM(score) AS total_score
FROM customers
GROUP BY country
HAVING SUM(score) > 100
ORDER BY total_score DESC;

-- the result of group by is determined by the unique values of the grouped columns
select country, first_name, SUM(score) AS total_score
from customers
group by country, first_name;

-- find total score and total number of customers per country
select country, sum(score) as total_score, count(*) as total_customers
from customers
group by country;

-- find total score per country with a condition
select country, sum(score) as total_score
from customers
group by country
having sum(score) > 800;

-- when to use having and where 
-- where is used to filter rows before aggregation
-- having is used to filter groups after aggregation
-- example:
select country, sum(score) as total_score
from customers
where score > 400
group by country
having sum(score) > 800;

-- what this does 
-- 1. Filters out rows where the score is not greater than 400
-- 2. Groups the remaining rows by country
-- 3. Calculates the total score for each country
-- 4. Filters out groups where the total score is not greater than 800
-- 5. Returns the remaining groups with their total scores

-- find the average score for each country, considering only customers scores not equal to 0
-- and return only those countries with an average score greater than 430

select country, avg(score) as average_score
from customers
where score != 0
group by country
having avg(score)> 430; 

-- example queries for distinct keyword
select distinct country
from customers;

select distinct first_name
from customers;

-- group by automatically does distinct on the grouped columns

select country, first_name
from customers
group by country, first_name; 
-- gives you distinct combinations of country and first_name

use MyDatabase;

select top 4 * -- is for the columns just like any other query
from customers;







