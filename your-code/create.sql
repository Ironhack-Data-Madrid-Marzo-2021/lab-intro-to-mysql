CREATE DATABASE company ;
USE company ;
#############################
#      CREATE THE TABLES    #
#############################
-- STEP 1 cars

 CREATE TABLE cars (
 car_id INT PRIMARY KEY,
 car_vin VARCHAR(20) NOT NULL,
 manufact VARCHAR(20) NOT NULL,
 model VARCHAR(20) NOT NULL,
 year_ VARCHAR(20) NOT NULL,
 color VARCHAR(20) NOT NULL
 );
 
 -- STEP 2 salesperson
 CREATE TABLE salesperson (
 salesperson_id INT PRIMARY KEY,
 name_1 VARCHAR(20) NOT NULL,
 store VARCHAR(20) NOT NULL,
 cars INT 
 );
 
 -- STEP 3 invoice
 CREATE TABLE invoice (
 number_ INT PRIMARY KEY,
 date_ DATE,
 car VARCHAR(20) NOT NULL,
 customer INT,
 cars INT
 );
 
 -- STEP 4 customer
 CREATE TABLE customer (
 customer_id INT PRIMARY KEY,
 name_ VARCHAR(20) NOT NULL,
 phone VARCHAR(20) NOT NULL,
 email VARCHAR(20) NOT NULL,
 adress VARCHAR(20) NOT NULL,
 city VARCHAR(20) NOT NULL,
 province VARCHAR(20) NOT NULL,
 country VARCHAR(20) NOT NULL,
 postal VARCHAR(20) NOT NULL,
 invoice INT, 
 salesperson INT
 )

