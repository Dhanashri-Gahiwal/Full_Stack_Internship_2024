-- create table contact with the fields of id, name, mobile, email, age, city
CREATE TABLE contact(id SERIAL primary key,
					 name varchar(50),
					 mobile varchar(10) unique, 
					 email varchar(50) unique, 
					 age int, 
					 city varchar(50)
					);
					
-- insert values into table contact
INSERT INTO contact(name,mobile,email,age,city)VALUES('Piyush','9087562432','piyush@gmail.com',16,'Kalwan');
INSERT INTO contact(name,mobile,email,age,city)VALUES('Aayush','9088562432','aayush@gmail.com',20,'Manur');
INSERT INTO contact(name,mobile,email,age,city)VALUES('Linesh','9087562431','linesh@gmail.com',22,'Nashik');
INSERT INTO contact(name,mobile,email,age,city)VALUES('Rajesh','9887562432','rajesh@gmail.com',24,'Pune');
INSERT INTO contact(name,mobile,email,age,city)VALUES('Tejas','9088582432','tejas@gmail.com',24,'Pune');
INSERT INTO contact(name,mobile,email,age,city)VALUES('Dhanshri','9087565431','dhanshri@gmail.com',26,'Nashik');
INSERT INTO contact(name,mobile,email,age,city)VALUES('Rahul','9887562492','rahul@gmail.com',28,'Pune');
INSERT INTO contact(name,age,city)VALUES('Narendra',65,'Bej');
INSERT INTO contact(name,age,city)VALUES('Pradip',58,'Bej');


-- view all records in table contact
SELECT * FROM contact;

-- view specific columns records in table contact
SELECT name, age, city FROM contact;

-- view all records of pune city
SELECT * FROM contact WHERE city = 'Pune';

-- view all records those age is greater than 50
SELECT * FROM contact WHERE age > 50;

-- view all records those age is 24 and belongs to the city of pune
SELECT * FROM contact WHERE age = 24 AND city = 'Pune';

-- mathematical query
SELECT 2+7;

SELECT (9/3)+10*4-2