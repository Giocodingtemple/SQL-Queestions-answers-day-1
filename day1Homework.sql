--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg'
--Answer is: 2

--2. How many payments were made BETWEEN $3.99 AND $5.99?
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
--Answer is: 5602

--3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC; 
--Answer is: 8 for the first 72 in the descending list

--4. How many customers have the last name ‘William’?
SELECT COUNT(*)
FROM customer
WHERE last_name = 'William'
--Answer is: 0
--Answer is: 1 with last name of williams
--Answer is: 1 with first name of william

--5. What store employee (get the id) sold the most rentals?
SELECT first_name, last_name, staff.staff_id, COUNT(staff.staff_id) 
FROM payment
join staff on payment.staff_id = staff.staff_id
GROUP BY staff.staff_id
ORDER BY COUNT DESC
limit 1;
--Answer is: Jon Stephens with 7304

--6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
--Answer is: 378

--7. What film has the most actors in it? (use film_actor table AND get film_id)
SELECT title, film.film_id,  COUNT(film.film_id) 
FROM film_actor
join film on film_actor.film_id = film.film_id
GROUP BY film.film_id  
ORDER BY COUNT(film.film_id) DESC
limit 1;
--Answer is: Title: Lambs Cincinatti FilmID: 508 COUNT: 15

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(*)
FROM customer
WHERE last_name like '%es' AND store_id = 1;
--Answer is: 13 customers

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids BETWEEN 380 AND 430? (use GROUP BY AND HAVING > 250)
SELECT amount, COUNT(amount) 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;
--Answer is: 2.99 with 290
--Answer is: 4.99 with 281
--Answer is: 0.99 with 269

--10. Within the film table, how many rating categories are there? AND what rating has the most movies total?
SELECT COUNT(DISTINCT rating)
FROM film;

SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY COUNT DESC 
LIMIT 1;
--Answer is: 5  
