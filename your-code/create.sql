DROP DATABASE IF EXISTS cars_info;
CREATE DATABASE cars_info;

USE cars_info;

CREATE TABLE cars (
car_id INT,
vin VARCHAR(20) NOT NULL,
manufacturer VARCHAR(20),
model VARCHAR(20),
year_ YEAR,
color VARCHAR (10),
PRIMARY KEY (car_id)
);

CREATE TABLE customers (
id_number INT,
customer_id INT NOT NULL, 
customer_name VARCHAR(20),
phone_number VARCHAR(20),
email VARCHAR(30), 
address VARCHAR(50),
city VARCHAR(20),
province VARCHAR (20),
country VARCHAR (20),
zip_code INT,
PRIMARY KEY (id_number)
);

CREATE TABLE salespersons (
sales_id INT,
staff_id INT NOT NULL, 
name_worker VARCHAR(15),
store VARCHAR(15),
PRIMARY KEY (staff_id)
);

CREATE TABLE invoices (
invoices_id INT,
invoices_no INT NOT NULL,
date_ DATE,
car_id INT,
id_number INT,
staff_id INT,
PRIMARY KEY (invoices_id),
FOREIGN KEY (id_number) REFERENCES customers(id_number),
FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id),
FOREIGN KEY (car_id) REFERENCES cars(car_id)
);

###################################
#      POPULATE THE DATABASE      #
###################################

INSERT INTO cars VALUES
(0,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
(5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO customers VALUES
(0, 10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045),
(1,	20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States', 33130),
(2,	30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);

INSERT INTO salespersons VALUES
(0,	00001,'Petey Cruiser','Madrid'),
(1,	00002,'Anna Sthesia','Barcelona'),
(2,	00003,'Paul Molive','Berlin'),
(3,	00004,'Gail Forcewind','Paris'),
(4,	00005,'Paige Turner','Mimia'),
(5,	00006,'Bob Frapples','Mexico City'),
(6,	00007,'Walter Melon','Amsterdam'),
(7,	00008,'Shonda Leer','São Paulo');

INSERT INTO invoices VALUES
(0,	852399038,'2018-08-22',0, 1,3),
(1,	731166526,'2018-12-31',3, 0,5),
(2,	271135104,'2019-01-22',2, 2 ,7);


-- Update records
UPDATE salespersons
SET store = 'Miami'
WHERE name_worker = 'Paige Turner';

UPDATE costumers
SET email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE costumers
SET email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE costumers
SET email = 'hello@napoleon.me'
WHERE customer_name = 'Napoleón Bonaparte';

