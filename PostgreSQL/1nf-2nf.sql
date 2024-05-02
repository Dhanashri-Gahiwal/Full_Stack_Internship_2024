-- create table of staff
CREATE TABLE staff(id SERIAL PRIMARY KEY, 
				   name VARCHAR(50), 
				   email VARCHAR(50) UNIQUE, 
				   mobile VARCHAR(10), salary INT);
				  
-- view table structure of staff
SELECT * FROM staff;

-- insert records into staff
INSERT INTO staff(name, email, mobile, salary) 
VALUES('Dhanashri','dhanashri@gmail.com','1234567890', 25000);
INSERT INTO staff(name, email, mobile, salary) 
VALUES('Rahul','rahul@gmail.com','2234567890', 65000);
INSERT INTO staff(name, email, mobile, salary) 
VALUES('Tejas','tejas@gmail.com','3234567890', 15000);
INSERT INTO staff(name, email, mobile, salary) 
VALUES('Rajesh','rajeshgmail.com','4234567890', 30000);
INSERT INTO staff(name, email, mobile, salary) 
VALUES('Linesh','linesh@gmail.com','5234567890', 10000);

-- create table of subject
CREATE TABLE subject(sid SERIAL PRIMARY KEY, 
				   sname VARCHAR(50), 
				   id int);
				  
-- view table structure of subject
SELECT * FROM subject;

-- insert records into subject
INSERT INTO subject(sname, id) VALUES('C',2);
INSERT INTO subject(sname, id) VALUES('C++',1);
INSERT INTO subject(sname, id) VALUES('C#',2);
INSERT INTO subject(sname, id) VALUES('Java',3);
INSERT INTO subject(sname, id) VALUES('Python',4);
INSERT INTO subject(sname, id) VALUES('PHP',5);

-- view the staff name whose teaching java
SELECT name, sname FROM staff, subject WHERE sname = 'Java' AND staff.id = subject.id;

-- view the staff name whose teaching c
SELECT name, sname FROM staff, subject WHERE sname = 'C' AND staff.id = subject.id;

-- view the subject name teaching rahul
SELECT name, sname FROM staff, subject WHERE name = 'Rahul' AND staff.id = subject.id;

-- view the subject name teaching rahul
SELECT name, sname FROM staff, subject WHERE staff.id = 2 AND staff.id = subject.id;

-- view the subject name and staff name
SELECT name, sname FROM staff, subject WHERE staff.id = subject.id;

-- how many subjects teaches whose id is 2
SELECT COUNT(sid) FROM staff,subject WHERE staff.id = 2 AND staff.id = subject.id;

-- how many subjects teaches whose id is 2 and display the subject names and staff name
SELECT sname, name FROM staff, subject WHERE staff.id = subject.id AND staff.id = (SELECT COUNT(sid) FROM staff, subject WHERE staff.id = 2 AND staff.id = subject.id);