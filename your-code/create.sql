DROP DATABASE IF EXISTS lab_mysql;

CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
  VIN INT PRIMARY KEY,
  manufacturer VARCHAR(20) NOT NULL,
  model VARCHAR(20) NOT NULL,
  year_ YEAR NOT NULL,
  colors VARCHAR(20)
  );
  
  CREATE TABLE customers (
  customer_ID INT PRIMARY KEY,
  name_ VARCHAR(20) NOT NULL,
  phone_nb VARCHAR(20) NOT NULL,
  mail VARCHAR(20) NOT NULL,
  address VARCHAR(20) NOT NULL,
  city VARCHAR(20) NOT NULL,
  state VARCHAR(20) NOT NULL,
  country VARCHAR(20) NOT NULL,
  zip VARCHAR(20) NOT NULL
  );
  
CREATE TABLE sales_persons (
  staff_ID INT PRIMARY KEY,
  name_ VARCHAR(20) NOT NULL,
  store VARCHAR(20) NOT NULL
  );
  
    CREATE TABLE invoices (
  invoice_ID INT PRIMARY KEY,
  cars VARCHAR(20) NOT NULL,
  customer VARCHAR(20) NOT NULL,
  sales_person VARCHAR(20) NOT NULL
  );
  
ALTER TABLE invoices
ADD FOREIGN KEY(cars)
REFERENCES cars(VIN)
ON DELETE SET NULL; 

ALTER TABLE invoices
ADD FOREIGN KEY(customers)
REFERENCES customers(customer_ID)
ON DELETE SET NULL; 

ALTER TABLE invoices
ADD FOREIGN KEY(sales_persons)
REFERENCES sales_persons(staff_ID)
ON DELETE SET NULL; Customers_Customer_IDCustomers_Customer_IDCars_VINinvoice_IDinvoice_IDinvoice_IDinvoice_ID

