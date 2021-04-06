USE lab_mysql;

UPDATE salespersons
SET store = 'Miami'
WHERE staff_id = 4;

UPDATE customers
SET email = 'ppicasso@gmail.com'
WHERE customer_id = 0;

UPDATE customers
SET email = 'lincoln@us.gov'
WHERE customer_id = 1;

UPDATE customers
SET email = 'hello@napoleon.me'
WHERE customer_id = 2;