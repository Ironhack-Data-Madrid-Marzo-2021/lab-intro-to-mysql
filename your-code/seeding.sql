select * from cars;
select * from customers;
select * from invoices;
select * from salespersons;

show columns from cars;
insert into cars (ID,VIN,Manufacturer,Model,Year,Color) values 
(0,"K096I98581DHSNUP","Volkswagen","Tiguan",2019,"Blue"),
(1,"ZM8G7BEUQZ97IH46V","Peugeot","Rifter",2019,"Red"),
(2,"RKXVNNIHLVVZOUB4M","Ford","Fusion",2018,"White"),
(3,"HKNDGS7CU31E9Z7JW","Toyota","RAV4",2018,"Silver"),
(4,"DAM41UDN3CHU2WVF6","Volvo","V60",2019,"Gray"),
(5,"DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country",2019,"Gray");
# ok

show columns from customers;
insert into customers (ID,Customer_ID,Name,Phone,Email,Address,City,State_Province,Country,Postal) values 
(0,10001,"Pablo Picasso","+34 636 17 63 82",null,"Paseo de la Chopera, 14","Madrid","Madrid","Spain",28045),
(1,20001,"Abraham Lincoln","+1 305 907 7086",null,"120 SW 8th St","Miami","Florida ","United States",33130),
(2,30001,"Napoléon Bonaparte","+33 1 79 75 40 00",null,"40 Rue du Colisée","Paris","Île-de-France","France",75008);
# ok

show columns from invoices;
insert into invoices (ID,Invoice_Number,Date,Cars_ID,Customers_ID,Salespersons_ID) values 
(0,852399038,"22-08-2018",0,1,3),22-08-2018
(1,731166526,"1-12-2018",3,0,5),
(2,271135104,"22-01-2019",2,2,7);
# aquí indico la fecha como string --> buscando solución
# ok

show columns from salespersons;
insert into salespersons (ID,Staff_ID,Name,Store) values 
(0,00001,"Petey Cruiser","Madrid"),
(1,00002,"Anna Sthesia","Barcelona"),
(2,00003,"Paul Molive","Berlin"),
(3,00004,"Gail Forcewind","Paris"),
(4,00005,"Paige Turner","Mimia"),
(5,00006,"Bob Frapples","Mexico City"),
(6,00007,"Walter Melon","Amsterdam"),
(7,00008,"Shonda Leer","São Paulo");
# ok
