-- drop table contact
DROP TABLE contact;

-- create table contact with the fields of id, name, mobile, email, age, gender, city
CREATE TABLE contact(id SERIAL primary key,
					 name varchar(50),
					 mobile varchar(10) unique, 
					 email varchar(50) unique, 
					 age int, 
					 gender varchar(15),
					 city varchar(50)
					);
					
-- insert values into table contact
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Piyush','9087562432','piyush@gmail.com',16,'male','Kalwan');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Aayush','9088562432','aayush@gmail.com',20,'male','Manur');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Linesh','9087562431','linesh@gmail.com',22,'male','Nashik');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Rajesh','9887562432','rajesh@gmail.com',24,'male','Pune');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Tejas','9088582432','tejas@gmail.com',24,'male','Pune');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Dhanshri','9087565431','dhanshri@gmail.com',26,'female','Nashik');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Rahul','9887562492','rahul@gmail.com',28,'male','Pune');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Narendra','7865432109','narendra@gmail.com',65,'male','Bej');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Pradip','9327654390','pradip@gmail.com',58,'male','Bej');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Sandip','9377654390','sandip@gmail.com',52,'male','Bej');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Dipak','9327854390','dipak@gmail.com',46,'male','Bej');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Pushpa','9327654391','pushpa@gmail.com',50,'female','Bej');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Jayashri','9327654392','jayashri@gmail.com',48,'female','Bej');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Aarchana','9327654399','aarchana@gmail.com',43,'female','Bej');
INSERT INTO contact(name,mobile,email,age,gender,city)VALUES('Sindhu','9327654380','sindhu@gmail.com',78,'female','Pimpalner');

-- view all records in table contact
SELECT * FROM contact;

-- view specific columns records in table contact
SELECT name, age, city FROM contact;

-- view all records of pune city
SELECT * FROM contact WHERE city = 'Pune';

-- view all records not from pune city
SELECT * FROM contact WHERE city NOT IN('Pune');

-- view all records not from bej city
SELECT * FROM contact WHERE city != 'Bej';

-- view all records of pune and nashik city
SELECT * FROM contact WHERE city IN('Pune','Nashik');

-- view all records those age is greater than 50
SELECT * FROM contact WHERE age > 50;

-- view all records of the age range between 40 to 50
SELECT * FROM contact WHERE age BETWEEN 40 and 50;

-- view all records those age is greater than 50, city is bej and gender male
SELECT * FROM contact WHERE age > 50 AND city = 'Bej' AND gender = 'male';

-- view all records those age is less than 30, city is pune or nashik and gender male
SELECT * FROM contact WHERE age < 30 AND gender = 'male' AND city = 'Pune' OR city = 'Nashik';

-- view all records those age is 24 and belongs to the city of pune
SELECT * FROM contact WHERE age = 24 AND city = 'Pune';

