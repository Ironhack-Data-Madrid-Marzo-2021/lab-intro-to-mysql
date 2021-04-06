DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
vin CHAR(7) primary key,
manufacturer varchar(40) not null,
model varchar(40) not null,
year_ char(4),
color_ varchar(10) not null
);

/*DROP TABLE sales_person;*/
CREATE TABLE sales_person (
staff_id INT primary key,
name varchar(40) not null,
store varchar(40) not null
);

/*DROP TABLE customer;*/
CREATE TABLE customer (
customer_id INT primary key,
name_ varchar(40) not null,
phone_no varchar(40) not null,
email varchar(40) not null,
address varchar(40) not null,
city varchar(40) not null,
province varchar(40) not null,
country varchar(40) not null,
postal varchar(40) not null
);

/*DROP TABLE invoices;*/
CREATE TABLE invoices (
invoice_no INT primary key,
name_ varchar(40) not null,
car_ varchar(40) not null,
customer_ INT not null,
saleS_person INT not null
);


ALTER TABLE invoices
ADD FOREIGN KEY (car_)
REFERENCES cars (vin)
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY (customer_)
REFERENCES customer (customer_id)
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY (sales_person)
REFERENCES sales_person (staff_id)
ON DELETE CASCADE;


