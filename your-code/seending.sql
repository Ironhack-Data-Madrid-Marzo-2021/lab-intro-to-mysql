###################################
#      POPULATE THE DATABASE      #
###################################

INSERT INTO cars VALUES
(0, '3K096I98581DHSNUP', 'Toyota',  'RAV4',  1997, 'Blue'), 
(1, 'ZM8G7BEUQZ97IH46V', 'Volkswagen', 'Tiguan',  2020, 'Green'),
(2, 'RKXVNNIHLVVZOUB4M', 'Peugeot',  'Rifter', 2002, 'Red'),
(3, 'HKNDGS7CU31E9Z7JW', 'Ford', 'Fusion', 2004, 'Black'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2016, 'White');


INSERT INTO salesperson VALUES
(0001, 'Petey Cruiser', 'Madrid',0),
(0002, 'Anna Sthesia', 'BCN', 2),
(0003, 'Paul Molive',  'Berlín', 3),
(0004, 'Gail Forcewind',  'Miami',4),
(0005, 'Paige Turner', 'Brazil', 2),
(0006, 'Bob Frapples', 'Mexico City',3),
(0007, 'Walter Melon', 'Copenhague',0);



INSERT INTO invoice VALUES
(852399038, '1997-05-16', 1001, '3K096I98581DHSNUP', 0),
(731166526, '2020-08-10', 1002, 'RKXVNNIHLVVZOUB4M', 2),
(271135104, '2016-05-09', 1003,'DAM41UDN3CHU2WVF6', 4);

INSERT INTO customer VALUES
(1001, 'Pablo Picasso',  '+34636176382',  'Paseo de la Chopera, 14', 'Madrid',  'Madrid', 'Spain', '28017', 852399038, 0007), 
(1002, 'Abraham Lincoln', '+13059077086',  '120 SW 8th St', 'Londres', 'Londres', 'UK', '28045', 731166526, 0005),
(1003, 'Napoléon Bonaparte',  '+33179754000', '40 Rue du Colisée', 'París',  'París', 'Francia', 271135104, 0004);



