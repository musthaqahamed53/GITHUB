USE cinema_booking_system; 
SELECT * FROM bookings;
SELECT * FROM customers;
SELECT * FROM films;
SELECT * FROM reserved_seat;
SELECT * FROM rooms;
SELECT * FROM screenings;
SELECT * FROM seats;

-- AGGREGATE FUNCTIONS
-- COUNT
SELECT count(*) FROM customers;

-- SUM
SELECT * FROM rooms;
SELECT SUM(no_seats) FROM rooms
WHERE name IN ('Kubrick', 'Chaplin');

-- MAX
SELECT * FROM films;
SELECT MAX(length_min) FROM films
WHERE id <8;

-- MIN
SELECT * FROM films;
SELECT MIN(length_min) FROM films
WHERE id <8;

-- AVERAGE
SELECT * FROM films;
SELECT AVG(length_min) FROM films;

SELECT * FROM bookings;
SELECT * FROM customers;
SELECT * FROM films;
SELECT * FROM reserved_seat;
SELECT * FROM rooms;
SELECT * FROM screenings;
SELECT * FROM seats;

-- how many bookings did customer id 10 make in October 2017.
SELECT COUNT(id) FROM bookings
where customer_id = 10;

-- count the number of screenings for Blade Runner 2049 in October 2017.
SELECT COUNT(sc.id) FROM screenings sc
JOIN films f ON f.id=sc.film_id
WHERE sc.start_time like '2017-10%' and f.name ='Blade Runner 2049';

-- count the number of unique customers who made a booking for October 2017.
SELECT COUNT(DISTINCT customer_id) FROM bookings;

-- GROUP BY
SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id;

--  join the customers table, the bookings table, the screenings table and the films table together
SELECT * FROM bookings;
SELECT * FROM customers;
SELECT * FROM films;
SELECT * FROM reserved_seat;
SELECT * FROM rooms;
SELECT * FROM screenings;
SELECT * FROM seats;

SELECT f.name, s.start_time, c.first_name, c.last_name, COUNT(b.id) FROM customers c
JOIN bookings b ON b.customer_id=c.id
JOIN screenings s ON s.id=b.screening_id
JOIN films f ON f.id=s.film_id
GROUP BY f.name, c.first_name, c.last_name,s.start_time
ORDER BY s.start_time ASC;

-- select the customer id and count the number of reserve seats grouped by customer for October 2017.
SELECT b.customer_id, COUNT(r.id) FROM customers c
JOIN bookings b ON b.customer_id=c.id
JOIN reserved_seat r ON r.booking_id=b.id
JOIN screenings s ON s.id=b.screening_id
GROUP BY b.customer_id;

-- select the film name and count the number of screenings for each film that is over two hours long.
SELECT f.name,f.length_min, COUNT(s.id) FROM films f
JOIN screenings s ON s.film_id=f.id
GROUP BY f.name,f.length_min
HAVING f.length_min >120;



