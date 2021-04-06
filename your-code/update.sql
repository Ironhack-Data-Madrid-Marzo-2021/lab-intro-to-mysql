#Pablo Picasso | ppicasso@gmail.com |
#Abraham Lincoln | lincoln@us.gov |
#Napoléon Bonaparte | hello@napoleon.me

SET SQL_SAFE_UPDATES = 0;

UPDATE Customers
SET email = 'ppicasso@gmail.com'
WHERE customer_name = 'Pablo Picasso';

UPDATE Customers
SET email = 'lincoln@us.gov'
WHERE customer_name = 'Abraham Lincoln';

UPDATE Customers
SET email = 'hello@napoleon.me'
WHERE customer_name = 'Napoléon Bonaparte';





Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
