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






