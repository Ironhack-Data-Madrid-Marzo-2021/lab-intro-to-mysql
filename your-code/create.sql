DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;



CREATE TABLE Salespersons(
salesperson_id INT  PRIMARY KEY,
staff_id INT,
salesperson_name VARCHAR(25) NOT NULL,
store VARCHAR(25) NOT NULL
)


CREATE TABLE Customers(
customers_id INT  PRIMARY KEY,
customer_id INT,
customer_name VARCHAR(25) NOT NULL,
phone_number VARCHAR (25),
email VARCHAR(30),
address VARCHAR(50),
city VARCHAR(25),
state_province VARCHAR(30),
country VARCHAR(30),
zip_postal_code INT,
salesperson_c INT,
FOREIGN KEY (salesperson_c) REFERENCES Salespersons(salesperson_id)
)


CREATE TABLE Invoices(
invoice_id INT  PRIMARY KEY,
invoice_number INT,
invoice_date DATE NOT NULL,
customer_i INT,
salesperson_i INT,
FOREIGN KEY (customer_i) REFERENCES Customers(customers_id),
FOREIGN KEY (salesperson_i) REFERENCES Salespersons(salesperson_id)
)



CREATE TABLE Cars(
car_id INT PRIMARY KEY,
vehicle_id VARCHAR(30),
manufacturer VARCHAR(25) NOT NULL,
model VARCHAR(25) NOT NULL,
car_year YEAR NOT NULL,
color VARCHAR (25) NOT NULL,
customer_ca INT,
salesperson_ca INT,
invoice_ca INT,
FOREIGN KEY (customer_ca) REFERENCES Customers(customers_id),
FOREIGN KEY (salesperson_ca) REFERENCES Salespersons(salesperson_id),
FOREIGN KEY (invoice_ca) REFERENCES Invoices(invoice_id)
)