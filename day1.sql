-- how to get every thing from actor query
--SELECT * 
--FROM film;

--limit out results
--SELECT * 
--FROM film
--LIMIT 10 ;

-- omits stuff
--SELECT * 
--FROM film
--LIMIT 10 OFFSET 5;

--SELECT * FROM actor;

--SELECT first_name, last_name
--FROM actor;

-- find firstname is oppiste of the code below 
-- SELECT first_name, last_name
-- FROM actor
-- WHERE last_name = 'Wahlberg'
--WHERE first_name LIKE 'Nick';

--look at specific film
--SELECT *
--FROM film
--WHERE film_id = 85

-- _ is any 1 CHARACTER and % any 0 or more number of CHARACTERS
--SELECT first_name, last_name
--FROM actor
--WHERE first_name LIKE 'J%'

--query names containing a y
--SELECT first_name, last_name
--FROM actor
--WHERE first_name = '%y%' OR first_name LIKE 'Y%'

--K names that are 2 letters long
--SELECT first_name, last_name
--FROM actor
--WHERE first_name LIKE 'K__' 

--first names that start with a K and end th and have atleast 2 letter inbetween
--SELECT first_name, last_name
--FROM actor
--WHERE first_name LIKE 'K__%th' 

--SELECT first_name, last_name
--FROM actor
--WHERE last_name LIKE 'torn' 

--SELECT * FROM payment;

-- comparisons
-- > < <= >= <> != [not equals]
--SELECT customer_id, amount
--FROM payment
--WHERE amount > 2.00

-- ascending
--SELECT customer_id, amount
--FROM payment
--WHERE amount >= 2.00
--ORDER BY amount ASC;

-- descending
-- SELECT customer_id, amount
-- FROM payment
-- WHERE amount >= 2.00
-- ORDER BY amount DESC;

-- work with ASC and DESC
-- SELECT customer_id, amount
-- FROM payment
-- WHERE amount BETWEEN 3.99 and 5.99

-- SQL AGGREGATIONS sum, avg, count, min, MAX
-- sum of all amounts 
-- SELECT SUM(amount)
-- FROM payment;

-- SELECT COUNT(amount)
-- FROM payment

-- SELECT DISTINCT first_name
-- FROM actor;

-- SELECT count(distinct amount)
-- from payment
-- where amount > 5.99;

-- SELECT avg( amount)
-- from payment;

-- min amount in payment
-- select min(amount) as min_payment
-- from payment
-- where amount <> 0;

-- select max(amount) as max_payment
-- from payment

-- select amount, count( amount)
-- from payment
-- group by amount;


-- select customer_id, sum( amount)
-- from payment
-- group by amount;

-- select customer_id, amount
-- from payment
-- group by customer_id, amount
-- order by amount desc;

-- SELECT customer_id, sum(amount) as soa
-- FROM payment
-- WHERE customer_id > 187
-- GROUP BY customer_id
-- HAVING sum(amount) > 71
-- ORDER BY amount desc
-- LIMIT 20 OFFSET 5;

-- SELECT count(customer_id), email
-- from customer
-- WHERE email like '%bishop%'
-- GROUP BY email






