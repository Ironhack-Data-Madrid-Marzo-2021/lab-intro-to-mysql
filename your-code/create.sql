CREATE DATABASE concesonario;
USE concesonario;
CREATE TABLE Cars(
	vehicle_id INT PRIMARY KEY,
    VIN VARCHAR (40),
    manufacturer VARCHAR (15) ,
    model VARCHAR (40) ,
    fabrication_year YEAR ,
    color VARCHAR (15)
);
CREATE TABLE Customers(
	client_id INT PRIMARY KEY,
    Customer_id VARCHAR (7) UNIQUE,
    name_ VARCHAR (30) ,
    phone_number VARCHAR (20) ,
    email VARCHAR (50),
    addres VARCHAR (50),
    city VARCHAR (15),
    state_province VARCHAR (30),
    country VARCHAR (20),
    zip_code VARCHAR (10)
);
CREATE TABLE Salesperson (
	staff_id INT PRIMARY KEY,
    number_id VARCHAR (10) UNIQUE,
	name_ VARCHAR (30) ,
    store VARCHAR (25)
    
);


CREATE TABLE Invoices (
	invoice_id INT PRIMARY KEY,
    invoice_number VARCHAR (20) UNIQUE,
    date_shell DATE,
    Cars INT,
    Customers INT,
    Salesperson INT
);

ALTER TABLE Invoices # coche
ADD FOREIGN KEY (Cars)
REFERENCES Cars (vehicle_id)
ON DELETE CASCADE;

ALTER TABLE Invoices # vendedor
ADD FOREIGN KEY (Salesperson)
REFERENCES Salesperson (staff_id)
ON DELETE CASCADE;

ALTER TABLE Invoices # cliente
ADD FOREIGN KEY (Customers)
REFERENCES Customers (client_id)
ON DELETE CASCADE;
