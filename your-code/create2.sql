
ALTER TABLE salesperson
ADD FOREIGN KEY(cars)
REFERENCES cars(car_id)
ON DELETE SET NULL;

ALTER TABLE invoice
ADD FOREIGN KEY(cars)
REFERENCES cars(car_id)
ON DELETE CASCADE;

ALTER TABLE customer
ADD FOREIGN KEY(invoice)
REFERENCES invoice(number_)
ON DELETE SET NULL;

ALTER TABLE customer
ADD FOREIGN KEY(salesperson)
REFERENCES salesperson(salesperson_id)
ON DELETE SET NULL;
 
CREATE TABLE sell_car (
car_id INT,
salesperson_id INT, 
PRIMARY KEY(car_id, salesperson_id),
FOREIGN KEY(car_id) REFERENCES cars(car_id) ON DELETE CASCADE,
FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE
);

CREATE TABLE car_invoice (
car_id INT,
number_ INT,
PRIMARY KEY(car_id, number_),
FOREIGN KEY(car_id) REFERENCES cars(car_id) ON DELETE CASCADE,
FOREIGN KEY(number_) REFERENCES invoice(number_) ON DELETE CASCADE
);

CREATE TABLE cust_invoice (
customer_id INT,
number_ INT,
PRIMARY KEY(customer_id, number_),
FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
FOREIGN KEY(number_) REFERENCES invoice(number_) ON DELETE CASCADE
);

CREATE TABLE buy_car (
customer_id INT,
salesperson_id INT,
PRIMARY KEY(customer_id, salesperson_id),
FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE
);

 