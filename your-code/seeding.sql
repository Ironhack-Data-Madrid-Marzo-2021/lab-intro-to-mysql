USE dario;

INSERT INTO cars (id_coche, vin, color, año, modelo)
VALUES ('0', '3K096I98581DHSNUP', 'Blue', '2019', 'Volkswagen'),
('1', 'ZM8G7BEUQZ97IH46V', 'Red', '2019', 'Peugeot'),
('2', 'RKXVNNIHLVVZOUB4M', 'White', '2018', 'Ford'),
('3', 'HKNDGS7CU31E9Z7JW', 'Silver', '2018', 'Toyota'),
('4', 'DAM41UDN3CHU2WVF6', 'Gray', '2019', 'Volvo'),
('5', 'DAM41UDN3CHU2WVF7', 'Gray', '2019', 'Volvo');

INSERT INTO customers (id, id_customer, nombre, num_telefono, email,  adress, ciudad, provincia, pais, cod_postal)
VALUES ('0', '10001', 'Pablo Picasso', '+34 636 17 63 82',' - ', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('1', '20001', 'Abraham Lincoln', '+1 305 907 7086','- ', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('2', '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '- ', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');



INSERT INTO salespersons (id_salespersons,id_staff,nombre, id_store)
VALUES ('0', '00001', 'Petey Cruiser', 'Madrid'),
('1', '00002', 'Anna Sthesia', 'Barcelona'),
('2', '00003', 'Paul Molive', 'Berlin'),
('3', '00004', 'Gail Forcewind', 'Paris'),
('4', '00005', 'Paige Turner', 'Mimia'),
('5', '00006', 'Bob Frapples', 'Mexico City'),
('6', '00007', 'Walter Melon', 'Amsterdam'),
('7', '00008', 'Shonda Leer', 'Sao Paulo');



INSERT INTO invoices (id_invoices, numero, fecha, customer, coche_id, id_salespersons)
VALUES ('0', '852399038', '22-08-2018',	'0', '1', '3'),
('1', '731166526', '31-12-2018', '3', '0', '5'),
('2', '271135104', '22-01-2019', '2', '2', '7');



  

