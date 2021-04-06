INSERT INTO Cars VALUES
(1,"NJNDJD3383NDJ","Ford", "Fiesta", "green",1991),
(2,"ECJDJ3848484S","Ford", "Mustang", "red", 1998),
(3,"NDNDJDDDC44DJ","Porche", "Carrera 991", "blue",2020),
(4,"TCJDDDFGD484S","Ferrari", "F1 Prix", "red", 2010),
(5,"E2JDJ384DE444","Nissan", "Altima", "white", 1990);

-- Auto Increment ID
INSERT INTO  Customers (first_name, last_name, age, email, phone_number, city, state, zip) VALUES
("Fran", "Leston", 36, "fran@gmail.com", "622427017","Madrid", "MA", "28036"),
("Adrian", "Campos", 26, "adri@gmail.com", "343343212","La Coruna", "GA", "23286"),
("Pedro", "Perez", 18, "peter@gmail.com", "848359037","Miami", "FL", "45036"),
("Andrea", "Orzayabal", 44, "andrea@gmail.com", "235890456","New York", "Ny", "75849"),
("Melania", "Trump", 29, "meal@gmail.com", "346543289","Trenton", "NJ", "04948")

INSERT INTO  Stores (store_name, city, country) VALUES
("Auto Zone", "Washington", "USA"),
("Cars Are Us", "Atlanta", "USA"),
("MyCar", "Madrid", "SPAIN"),
("Konichiwa", "Tokyo", "JAPAN"),
("Motor City", "Santiago de Compostela", "SPAIN")

INSERT INTO  Salespersons (first_name, last_name, store_id) VALUES
("Alejandro", "Gomez", 1),
("Lizbeth", "Brons", 2),
("Isabel", "Ayudo", 3),
("Michael", "Cain", 4),
("Roberto", "Cañizares", 5)

INSERT INTO  Invoices (invoice_number, purchase_date, customer_id, car_id, salesperson_id) VALUES
("132334342332", "2020-12-01", 3,1,3),
("232323434332", "2019-01-01", 1,2,3),
("332334343332", "2021-06-25", 2,4,4),
("434342356732", "1999-11-11", 4,2,3),
("533445343432", "2015-04-04", 5,3,5)

