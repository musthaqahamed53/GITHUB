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
    order_time TIME,
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















