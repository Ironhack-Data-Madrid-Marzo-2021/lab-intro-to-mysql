CREATE DATABASE my_sql_lab2;
USE my_sql_lab2

CREATE TABLE cars (
vin INT PRIMARY KEY,
manufacturer VARCHAR(20) NOT NULL,
model VARCHAR(20) NOT NULL,
year_ YEAR NOT NULL,
color VARCHAR(10) NOT NULL
);

CREATE TABLE customers (
customerid INT PRIMARY KEY,
name_ VARCHAR(20) NOT NULL,
email VARCHAR(20) NOT NULL,
phone VARCHAR(20) NOT NULL,
address VARCHAR(25) NOT NULL,
city VARCHAR(15) NOT NULL,
state VARCHAR(15) NOT NULL,
country VARCHAR(20) NOT NULL,
zip VARCHAR(10) NOT NULL
);

CREATE TABLE salesperson (
staff_id INT PRIMARY KEY,
name_ VARCHAR(20) NOT NULL,
store VARCHAR(20) NOT NULL
);

CREATE TABLE invoices (
invoice_id INT PRIMARY KEY,
sales_person INT, 
car_id INT,
customer_id INT,
date_ DATE
);

ALTER TABLE invoices
ADD FOREIGN KEY(customer_id)
REFERENCES customers(customerid)
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY(car_id)
REFERENCES cars(vin)
ON DELETE CASCADE;

ALTER TABLE invoices
ADD FOREIGN KEY(sales_person)
REFERENCES salesperson(staff_id)
ON DELETE CASCADE; 

