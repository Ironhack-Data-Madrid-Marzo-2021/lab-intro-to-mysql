DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE Cars (
Car_id INT PRIMARY KEY,
VIN VARCHAR (25) NOT NULL,
Model VARCHAR (25) NOT NULL,
Color VARCHAR (25) NOT NULL,
Manufacturer VARCHAR (25) NOT NULL,
year_ YEAR NOT NULL
);

CREATE TABLE Costumers (
Costumers_id INT PRIMARY KEY,
name_costumer VARCHAR (40),
Phone VARCHAR (15) NOT NULL,
Email VARCHAR (40),
Address VARCHAR (80),
City VARCHAR (30),
State VARCHAR (30),
Country VARCHAR (40),
Postal VARCHAR (20) NOT NULL
);

CREATE TABLE Salespersons (
Staff_id INT PRIMARY KEY,
Name_staff VARCHAR (40),
Store VARCHAR (40)
);

CREATE TABLE invoices (
Invoice_ide INT PRIMARY KEY,
Invoice_number INT,
Date_ DATE NOT NULL,
Cars_ INT,
Costumer_ INT,
Sales_persons INT,
FOREIGN KEY (Cars_) REFERENCES Cars (Car_id) ON DELETE SET NULL,
FOREIGN KEY (Costumer_) REFERENCES Costumers (Costumers_id) ON DELETE SET NULL,
FOREIGN KEY (Sales_persons) REFERENCES Salespersons(Staff_id) ON DELETE SET NULL
);



