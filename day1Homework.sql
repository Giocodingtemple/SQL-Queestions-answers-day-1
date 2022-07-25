--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’?
--SELECT first_name, last_name
--FROM actor
--WHERE last_name = 'Wahlberg'
--answer is: 2

--2. How many payments were made between $3.99 and $5.99?
-- SELECT customer_id, amount
-- FROM payment
-- WHERE amount BETWEEN 3.99 and 5.99
-- answer is: 5602

--3. What film does the store have the most of? (search in inventory)
-- SELECT film_id, COUNT(film_id)
-- FROM inventory
-- GROUP BY film_id
-- ORDER BY COUNT(film_id) DESC; 
-- answer is: 8 for the first 72 in the descending list

--4. How many customers have the last name ‘William’?
-- select count(*)
-- from customer
-- where last_name = 'William'
-- answer is: 0
-- answer is: 1 with last name of williams
-- answer is: 1 with first name of william

--5. What store employee (get the id) sold the most rentals?
-- select first_name, last_name, staff.staff_id, count(staff.staff_id) 
-- from payment
-- join staff on payment.staff_id = staff.staff_id
-- group by staff.staff_id
-- order by count desc
-- limit 1;
-- Answer is: Jon Stephens with 7304

--6. How many different district names are there?
-- select count(distinct district)
-- from address;
-- Answer is: 378

--7. What film has the most actors in it? (use film_actor table and get film_id)
-- select title, film.film_id,  count(film.film_id) 
-- from film_actor
-- join film on film_actor.film_id = film.film_id
-- group by film.film_id  
-- order by count(film.film_id) desc
-- limit 1;
-- Answer is: Title: Lambs Cincinatti FilmID: 508 Count: 15

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- select count(*)
-- from customer
-- where last_name like '%es' and store_id = 1;
-- Answer is: 13 customers

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
-- select amount, count(amount) 
-- from payment
-- where customer_id between 380 and 430
-- group by amount
-- having count(amount) > 250;
-- Answer is: 2.99 with 290
-- Answer is: 4.99 with 281
-- Answer is: 0.99 with 269

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
-- select count(distinct rating)
-- from film;

-- select rating, count(film_id)
-- from film
-- group by rating
-- ORDER BY count DESC 
-- LIMIT 1;
-- Answer is: 5  

