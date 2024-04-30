/*1*/SELECT title FROM film
     ORDER BY title ASC

/*2*/SELECT DISTINCT rating FROM film
     ORDER BY rating ASC

/*3*/SELECT DISTINCT title, replacement_cost FROM film
     WHERE rating like 'PG%'
     ORDER BY replacement_cost DESC, title ASC

/*4*/SELECT DISTINCT city, p.country FROM city c
     JOIN country p ON c.country_id = p.country_id
     GROUP by country

/*5*/SELECT p.country, COUNT(*) AS ciudades FROM city c
     JOIN country p ON c.country_id = p.country_id
     GROUP by country
     ORDER by ciudades DESC

/*6*/SELECT p.country, COUNT(*) AS ciudades FROM city c
     JOIN country p ON c.country_id = p.country_id
     GROUP by country
     HAVING ciudades > 2
     ORDER by ciudades DESC

/*7*/SELECT	
     min(return_date) AS vieja,
	 max(return_date) AS reciente
     FROM rental
     WHERE return_date IS NOT NULL

/*8*/SELECT p.title, COUNT(*) AS cantidad FROM film_actor f
     JOIN film p ON f.film_id= p.film_id
     GROUP by p.film_id
     ORDER by cantidad ASC
     LIMIT 10;

/*9*/SELECT f.title, count(*) AS alquilado FROM rental r
     JOIN inventory i ON r.rental_id = i.inventory_id
     JOIN film f on r.inventory_id = f.film_id
     GROUP by title
     ORDER by alquilado DESC
     LIMIT 1 OFFSET 2;
