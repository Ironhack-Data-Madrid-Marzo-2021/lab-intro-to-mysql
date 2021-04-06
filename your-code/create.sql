# Hola
# CREATE DATABASE dario;
USE dario;


CREATE TABLE cars (
  id_coche INT PRIMARY KEY,
  vin VARCHAR(20) NOT NULL,
  manufacturer VARCHAR(50) NULL,
  color VARCHAR(20) NULL,
  año VARCHAR(40) NULL,
  modelo INT NOT NULL
  );
  
  

  
  
 CREATE TABLE customers  (
    id INT PRIMARY KEY,
    id_customer INT NOT NULL,
	nombre VARCHAR(50) NULL,
	num_telefono VARCHAR(50) NULL,
	email VARCHAR(20) NULL,
	adress VARCHAR(30) NULL,
    ciudad VARCHAR(40) NULL,
	provincia VARCHAR(30) NULL,
	pais VARCHAR (40) NULL,
	cod_postal VARCHAR (40) NULL
    
  );
  
  

  
  CREATE TABLE salespersons (
	id_salespersons INT PRIMARY KEY ,
	id_staff VARCHAR(45) NOT NULL,
	nombre VARCHAR(45) NULL,
	id_store VARCHAR(50)
    
    )
    
    
  
  CREATE TABLE invoices (
  id_invoices INT PRIMARY KEY ,
  numero VARCHAR(40) NOT NULL,
  fecha VARCHAR(40) NOT NULL,
  customer INT NOT NULL,
  coche_id INT NOT NULL,
  id_salespersons INT NOT NULL
 
  
  )


  
  