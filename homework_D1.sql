--How many actors are there with the last name ‘Wahlberg’?
2 
SELECT *
FROM actor
WHERE last_name LIKE 'Wahlberg';
-- How many payments were made between $3.99 and $5.99?
2 payment
SELECT *
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--What film does the store have the most of? (search in sqlinventory)
8
SELECT film_id, COUNT(*) AS copy_count
FROM inventory
GROUP BY film_id
ORDER BY copy_count DESC
LIMIT 1;



--How many customers have the last name ‘William’?
0 
SELECT *
FROM actor
WHERE last_name LIKE 'William';


--What store employee (get the id) sold the most rentals?
1
SELECT rental_id AS customer_id, COUNT(*) AS rental_count
FROM rental
GROUP BY rental_id
ORDER BY rental_count DESC
LIMIT 1;



--How many different district names are there?

SELECT COUNT(DISTINCT district) AS first_name
FROM film_actor;




--What film has the most actors in it? (use film_actor table and get film_id)
508
SELECT film_id, COUNT(actor_id) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;



--From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
13
SELECT COUNT(*) AS num_customers
FROM customer
WHERE store_id = 1
AND last_name LIKE '%es';

--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(*) AS rental_count
FROM payment 
JOIN rental ON rental_id = rental_id
JOIN customer c ON customer_id = customer_id
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING rental_count > 250;


--Within the film table, how many rating categories are there? And what rating has the most
--movies total?
5
SELECT rating, COUNT(*) AS movie_count
FROM film
GROUP BY rating
ORDER BY movie_count DESC;
