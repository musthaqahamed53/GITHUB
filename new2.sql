create database test;
use test;
CREATE TABLE address (
    id INT,
    house_no INT,
    city VARCHAR(20),
    postcode VARCHAR(7)
);
CREATE TABLE people (
    id INT,
    first_name VARCHAR(20),
    last_namke VARCHAR(20),
    address_id INT
);
CREATE TABLE pets (
    id INT,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT
);
show tables;
 
describe address;
alter table address
add primary key(id); -- adding primary key
alter table address
drop primary key; -- dropping primary key

describe people;
alter table people
add primary key(id);

alter table people
add constraint fk_peopleaddress
foreign key (address_id) references address(id); -- add foerign key

alter table people
drop foreign key fk_peopleaddress; -- drop foreign key

-- change column name
alter table pets change `species` `animal_type` varchar(20);

-- set foreign key for pets
alter table pets
add constraint fk_petspeople
foreign key (owner_id) references people(id);
describe pets;

alter table pets add primary key (id);

-- modify the data type -- method 1
alter table address
modify city varchar(30);

-- modify the data type -- method 2
alter table address change `city` `city` varchar(20);

-- add column named email in people table
alter table people
add column email varchar(30);

-- add unique constraint for email
alter table people
add constraint email_constraint unique (email);
describe people;

-- rename name to first_name in pets table
alter table pets change `name` `first_name` varchar(20);

-- change postcode datatype
alter table address modify postcode char(7);





