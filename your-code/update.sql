


ALTER TABLE `lab_mysql`.`invoices` 
CHANGE COLUMN `Date` `Date` DATE NOT NULL ;


SELECT * FROM lab_mysql.invoices;

update invoices set Date='2018-08-22' where id=0;
update invoices set Date='2018-12-31' where id=1;
update invoices set Date='2019-01-22' where id=2;



SELECT * FROM lab_mysql.salespersons;

update salespersons set Store='Miami' where id=4;


SELECT * FROM lab_mysql.customers;

update customers set Email='ppicasso@gmail.com' where id=0;
update customers set Email='lincoln@us.gov' where id=1;
update customers set Email='hello@napoleon.me' where id=2;