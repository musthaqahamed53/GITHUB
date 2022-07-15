show databases;

create database coffee_store;
use coffee_store;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    price DECIMAL(3 , 2 )
);

CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender ENUM('M', 'F'),
    phone_number VARCHAR(11)
);
drop table customers;

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_time DATETIME,
    FOREIGN KEY (customer_id)
        REFERENCES customers (id),
    FOREIGN KEY (product_id)
        REFERENCES products (id)
);
drop table orders;
show tables;

SELECT * FROM products;
alter table products
add column coffee_origin varchar(30);
alter table products
drop column coffee_origin;

use coffee_store;
SELECT * FROM products; -- inserting data into into tables
insert into products(name,price,coffee_origin)
values('Espresso',2.50,'Brazil');

insert into products(name,price,coffee_origin)
values('Machiatto',3,'Brazil'),('Cappuchino',4,'Costa Rica'); -- inserting multiple data into into tables

insert into products(name,price,coffee_origin)
values('Latte',3.5,'Indonesia'),
('Americano',3,'Brazil'),
('Flat White',3.5,'Indonesia'),
('Filter',3,'India');

select distinct coffee_origin from products;

update products set name = 'Cappucino' where id = 3; -- updating table data
update products set coffee_origin = 'Srilanka' where id = 7;
update products set price = 3.25 where id=5;

INSERT INTO customers (first_name, last_name, gender, phone_number) VALUES ('Chris','Martin','M','01123147789'),('Emma','Law','F','01123439899'),('Mark','Watkins','M','01174592013'),('Daniel','Williams','M',NULL),('Sarah','Taylor','F','01176348290'),('Katie','Armstrong','F','01145787353'),('Michael','Bluth','M','01980289282'),('Kat','Nash','F','01176987789'),('Buster','Bluth','M','01173456782'),('Charlie',NULL,'F','01139287883'),('Lindsay','Bluth','F','01176923804'),('Harry','Johnson','M',NULL),('John','Smith','M','01174987221'),('John','Taylor','M',NULL),('Emma','Smith','F','01176984116'),('Gob','Bluth','M','01176985498'),('George','Bluth','M','01176984303'),('Lucille','Bluth','F','01198773214'),('George','Evans','M','01174502933'),('Emily','Simmonds','F','01899284352'),('John','Smith','M','01144473330'),('Jennifer',NULL,'F',NULL),('Toby','West','M','01176009822'),('Paul','Edmonds','M','01966947113');
select * from customers;

INSERT INTO orders (product_id,customer_id,order_time) VALUES (1,1,'2017-01-01 08-02-11'),(1,2,'2017-01-01 08-05-16'),(5,12,'2017-01-01 08-44-34'),(3,4,'2017-01-01 09-20-02'),(1,9,'2017-01-01 11-51-56'),(6,22,'2017-01-01 13-07-10'),(1,1,'2017-01-02 08-03-41'),(3,10,'2017-01-02 09-15-22'),(2,2,'2017-01-02 10-10-10'),(3,13,'2017-01-02 12-07-23'),(1,1,'2017-01-03 08-13-50'),(7,16,'2017-01-03 08-47-09'),(6,21,'2017-01-03 09-12-11'),(5,22,'2017-01-03 11-05-33'),(4,3,'2017-01-03 11-08-55'),(3,11,'2017-01-03 12-02-14'),(2,23,'2017-01-03 13-41-22'),(1,1,'2017-01-04 08-08-56'),(3,10,'2017-01-04 11-23-43'),(4,12,'2017-01-05 08-30-09'),(7,1,'2017-01-06 09-02-47'),(3,18,'2017-01-06 13-23-34'),(2,16,'2017-01-07 09-12-39'),(2,14,'2017-01-07 11-24-15'),(4,5,'2017-01-08 08-54-11'),(1,1,'2017-01-09 08-03-11'),(6,20,'2017-01-10 10-34-12'),(3,3,'2017-01-10 11-02-11'),(4,24,'2017-01-11 08-39-11'),(4,8,'2017-01-12 13-20-13'),(1,1,'2017-01-14 08-27-10'),(4,15,'2017-01-15 08-30-56'),(1,7,'2017-01-16 10-02-11'),(2,10,'2017-01-17 09-50-05'),(1,1,'2017-01-18 08-22-55'),(3,9,'2017-01-19 09-00-19'),(7,11,'2017-01-19 11-33-00'),(6,12,'2017-01-20 08-02-21'),(3,14,'2017-01-21 09-45-50'),(5,2,'2017-01-22 10-10-34'),(6,24,'2017-01-23 08-32-19'),(6,22,'2017-01-23 08-45-12'),(6,17,'2017-01-23 12-45-30'),(2,11,'2017-01-24 08-01-27'),(1,1,'2017-01-25 08-05-13'),(6,11,'2017-01-26 10-49-10'),(7,3,'2017-01-27 09-23-57'),(7,1,'2017-01-27 10-08-16'),(3,18,'2017-01-27 10-13-09'),(4,19,'2017-01-27 11-02-40'),(3,10,'2017-01-28 08-03-21'),(1,2,'2017-01-28 08-33-28'),(1,12,'2017-01-28 11-55-33'),(1,13,'2017-01-29 09-10-17'),(6,6,'2017-01-30 10-07-13'),(1,1,'2017-02-01 08-10-14'),(2,14,'2017-02-02 10-02-11'),(7,10,'2017-02-02 09-43-17'),(7,20,'2017-02-03 08-33-49'),(4,21,'2017-02-04 09-31-01'),(5,22,'2017-02-05 09-07-10'),(3,23,'2017-02-06 08-15-10'),(2,24,'2017-02-07 08-27-26'),(1,1,'2017-02-07 08-45-10'),(6,11,'2017-02-08 10-37-10'),(3,13,'2017-02-09 08-58-18'),(3,14,'2017-02-10 09-12-40'),(5,4,'2017-02-10 11-05-34'),(1,2,'2017-02-11 08-00-38'),(3,8,'2017-02-12 08-08-08'),(7,20,'2017-02-12 09-22-10'),(1,1,'2017-02-13 08-37-45'),(5,2,'2017-02-13 12-34-56'),(4,3,'2017-02-14 08-22-43'),(5,4,'2017-02-14 09-12-56'),(3,5,'2017-02-15 08-09-10'),(6,7,'2017-02-15 09-05-12'),(1,8,'2017-02-15 09-27-50'),(2,9,'2017-02-16 08-51-12'),(3,10,'2017-02-16 13-07-46'),(4,11,'2017-02-17 08-03-55'),(4,12,'2017-02-17 09-12-11'),(5,10,'2017-02-17 11-41-17'),(6,18,'2017-02-17 13-05-56'),(7,19,'2017-02-18 08-33-27'),(1,17,'2017-02-19 08-12-31'),(1,1,'2017-02-20 09-50-17'),(3,5,'2017-02-20 09-51-29'),(4,6,'2017-02-20 10-43-39'),(3,1,'2017-02-21 08-32-17'),(1,1,'2017-02-21 10-30-11'),(3,2,'2017-02-21 11-08-45'),(4,3,'2017-02-22 11-46-32'),(2,15,'2017-02-22 13-35-16'),(6,13,'2017-02-23 08-34-48'),(4,24,'2017-02-24 08-32-03'),(2,13,'2017-02-25 08-03-12'),(7,17,'2017-02-25 09-34-23'),(7,23,'2017-02-25 11-32-54'),(5,12,'2017-02-26 11-47-34'),(6,4,'2017-02-27 12-12-34'),(1,1,'2017-02-28 08-59-22');
select * from orders;
alter table orders modify order_time datetime;
SELECT last_name,phone_number  FROM customers;

select * from products;
update products set coffee_origin='Columbia' where id=1;
update products set coffee_origin='Columbia' where id=2;

select * from products where coffee_origin='Columbia';
select * from products where price=3.5;
select id,name from products;

select * from products where price!=3;

select * from customers;
select first_name, phone_number from customers where gender='F' and last_name='Bluth'; -- select frst name and last name from customers table who are female and last name Bluth

-- from the products table select the name for all the products that have a price greater than 3.00 or a coffee origin of Sri Lanka.
select * from products;
select name from products where price >3 or coffee_origin='Srilanka';

--  how many male customers don't have a phone number in customers table
select * from customers;
select count(first_name) from customers where phone_number is null;

select * from orders;
select product_id, customer_id, order_time from orders;

select product_id, customer_id, order_time from orders
where order_time between '2017-01-01' and '2017-01-07';

select product_id, customer_id, order_time from orders
where customer_id between 5 and 10;

select * from customers
where last_name between 'A' and 'Y' and phone_number is null;

select * from customers
where last_name in ('Martin','Bluth') and gender='F';

select * from customers
where first_name like '%o%';

select * from customers
where first_name like '_o%';

select * from customers
where first_name like '_o_';

-- from the products table select the name and price of all products with a coffee origin equal to Colombia or Indonesia and then ordered by name from a to z.
select * from products;
select name, price from products
where coffee_origin in ('Columbia', 'Indonesia')
order by name asc;

-- from the orders table select all the orders from February 2017 for customers with ids of 2, 4, 6 or 8.
select * from orders;
select * from orders
where order_time like '2017-02%' and customer_id in (2,4,6,8);

-- from the customers table select the first name and phone number of all customers, his last name contains the pattern ar.
select * from customers;
select first_name, phone_number from customers
where last_name like '%ar%';

select * from customers
limit 5;

select * from customers
limit 5 offset 5;

-- from the customers table select distinct last names and order them alphabetically from a to z.
select distinct last_name from customers order by last_name asc;

-- select from the orders table to select the first three orders placed by customer with id1 in February 2017.
select * from orders
where customer_id =1 and order_time like '2017-02%'
limit 3;

-- select the name price and coffee origin from the products table, but to rename the price column to retail price in the result set.
select * from products;
select name, price as retail_price, coffee_origin from products;


-- Joins in mySQL
describe orders;
select * from orders;
select * from products; 
select * from customers;

-- Inner join
-- selecting name from products and time from orders by inner joining the FK in orders and PK in products
select products.name, orders.order_time from orders
inner join products on orders.product_id = products.id;

-- can also written as -- shorthand version by using table name alias
select p.name, o.order_time from orders o
join products p on o.product_id = p.id;

-- selecting name,price from products and time from orders by inner joining the FK in orders and PK in products and order by ordertime
select p.name, p.price, o.order_time from orders o
join products p on o.product_id = p.id
order by o.order_time asc;

-- selecting name,price from products and time from orders by inner joining the FK in orders and PK in products , where product id is 5 and order by ordertime
select p.name, p.price, o.order_time from orders o
join products p on o.product_id = p.id
where p.id = 5
order by o.order_time asc;

select * from orders;
select * from products; 
select * from customers;

select c.first_name, c.last_name, o.order_time, c.phone_number from customers c
join orders o on o.customer_id = c.id;

update orders set customer_id=null where id=1;

SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
left JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time asc
LIMIT 10;

SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
right JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time asc
LIMIT 10;

update orders set customer_id=1 where id=1;

select * from orders;
select * from products; 
select * from customers;

-- select the order id and customer's phone  number for all orders of product id 4.
select o.id, c.phone_number from orders o
join customers c on c.id=o.customer_id
where o.product_id=4;

-- select the product name and order time for filter coffees sold between January  the 15th 2017 and February the 14th 2017.
select p.name, o.order_time from products p
join orders o on o.product_id=p.id
where p.name like 'Filter' and order_time between '2017-01-15' and '2017-02-14';

-- select the product name and price and order time for all orders  from females in January 2017.
select p.name, p.price, o.order_time from products p
join orders o on o.product_id-p.id
join customers c on c.id=o.customer_id
where c.gender='F' and o.order_time like '2017-01%';
