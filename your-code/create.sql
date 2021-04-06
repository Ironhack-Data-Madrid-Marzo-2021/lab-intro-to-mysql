DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE cars(
car_id INT PRIMARY KEY AUTO_INCREMENT,
VIN VARCHAR(25),
manufacturer VARCHAR(20) NOT NULL,
model VARCHAR(20) NOT NULL,
year_ INT NOT NULL,
color VARCHAR(10)
);

CREATE TABLE customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customers_id VARCHAR(5),
name_ VARCHAR(40) NOT NULL,
phone_no VARCHAR(30) NOT NULL,
email VARCHAR(25), 
address VARCHAR(50),
city VARCHAR(30),
state VARCHAR(30),
country VARCHAR(30),
zip VARCHAR(5)
);

CREATE TABLE salespersons(
staff_id INT PRIMARY KEY AUTO_INCREMENT,
salesperson_ VARCHAR(5),
name_ VARCHAR(15) NOT NULL,
store VARCHAR(30) NOT NULL
);

CREATE TABLE invoices(
invoice_id INT PRIMARY KEY AUTO_INCREMENT,
invoice_nr VARCHAR(25),
date_ DATE NOT NULL,
cars_ INT,
customer_ INT,
staff_ INT,
FOREIGN KEY(cars_) REFERENCES cars(car_id) ON DELETE SET NULL,
FOREIGN KEY(customer_) REFERENCES customers(customer_id) ON DELETE CASCADE,
FOREIGN KEY(staff_) REFERENCES salespersons(staff_id) ON DELETE CASCADE
); 

