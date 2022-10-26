show databases;
create database sample1;

use sample1;

create table data1(
	id INT auto_increment primary key,
    first_name VARCHAR(20),
    last_name VARCHAR(20)
);

CREATE TABLE data2(
	id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(20),
    customer_id INT,
    order_time TIME,
    FOREIGN KEY (customer_id) REFERENCES data1(id)
);

SHOW TABLES;

INSERT INTO data1 (first_name,last_name) VALUES ('Hrithik','Roshan'),('Narendra','Modi'),('Rahul','Gandhi');

SELECT * FROM data1;

INSERT INTO data2 (product_name,customer_id,order_time) VALUES ('Coffee',3,'08-10-20'),('Coffee',2,'09-10-22'),('Mojito',3,'08-15-20'),('Tea',1,'10-10-20');

SELECT * FROM data2;
truncate data2;

SELECT distinct product_name from data2;

SELECT * FROM data1 WHERE first_name like 'N%';

describe data2;

SELECT d1.first_name,d1.last_name,d2.product_name,d2.order_time FROM data1 d1
join data2 d2 ON d2.customer_id=d1.id;