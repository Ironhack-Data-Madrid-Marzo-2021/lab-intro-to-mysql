CREATE DATABASE IF NOT exists lab_mysql;
USE lab_mysql;

CREATE TABLE Cars (
    id int not null auto_increment primary key,
    manufacturer varchar(30) not null,
    model varchar(30) not null,
    color varchar(10),
    year_ int
);

CREATE TABLE Customers (
    id int not null auto_increment primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    age tinyint,
    email varchar(50),
    phone_number varchar(25),
    city varchar(30) not null,
    state varchar(2) not null,
    zip varchar(10) not null
);

CREATE TABLE Stores (
    id int not null auto_increment primary key,
    store_name varchar(30) not null,
    city varchar(30) not null,
	country varchar(30) not null
    
);

CREATE TABLE Salespersons (
    id int not null auto_increment primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
	store_id INT,
	FOREIGN KEY(store_id) REFERENCES Stores(id) ON DELETE SET NULL
);


CREATE TABLE Invoices (
    id int not null auto_increment primary key,
    invoice_number varchar(30) not null,
    purchase_date date,
    customer_id INT,
    car_id INT,
    salesperson_id INT,
	FOREIGN KEY(customer_id) REFERENCES Customers(id) ON DELETE SET NULL,
    FOREIGN KEY(car_id) REFERENCES Cars(id) ON DELETE SET NULL,
	FOREIGN KEY(salesperson_id) REFERENCES Salespersons(id) ON DELETE SET NULL
);


