create table sakila.rentals_may like sakila.rental;
insert into sakila.rentals_may
select *
from sakila.rental
where date_format(rental_date, '%M') = 'May';

create table sakila.rentals_june like sakila.rental;
insert into sakila.rentals_june
select *
from sakila.rental
where date_format(rental_date, '%M') = 'June';


SELECT customer_id, count(rental_id) FROM sakila.rental_may
group by customer_id
order by count(rental_id);

SELECT customer_id, count(rental_id) FROM sakila.rental_june
group by customer_id
order by count(rental_id);

