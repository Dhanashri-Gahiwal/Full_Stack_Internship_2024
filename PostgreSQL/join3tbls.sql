-- create table course with fields cid, cname
CREATE TABLE Course(cid SERIAL PRIMARY KEY, cname VARCHAR(50));

-- create table student with fields sid, sname, cid
CREATE TABLE Student(sid SERIAL PRIMARY KEY, sname VARCHAR(50), cid INTEGER);

-- create table teacher with fields tid, tname, cid
CREATE TABLE Teacher(tid SERIAL PRIMARY KEY, tname VARCHAR(50), cid INTEGER);

-- view the table structure of course
SELECT * FROM Course;

-- view the table structure of student
SELECT * FROM Student;

-- view the table structure of teacher
SELECT * FROM Teacher;

-- insert records into course
INSERT INTO Course(cname) VALUES('C'),('CPP'),('Java'),('Python');

-- insert records into student
INSERT INTO Student(sname,cid) VALUES('Seema',1),('Meera',4),('Neha',3),('Sagar',2),('Ravi',3);

-- Add column tid into course table
ALTER TABLE Course ADD tid INTEGER;

-- Update course table
UPDATE Course SET tid = 3 WHERE cid = 1;
UPDATE Course SET tid = 1 WHERE cid = 2;
UPDATE Course SET tid = 2 WHERE cid = 3;
UPDATE Course SET tid = 3 WHERE cid = 4;

-- drop column cid into teachet table
ALTER TABLE Teacher DROP cid;

-- insert records into teacher
INSERT INTO Teacher(tname) VALUES('Gaurav'),('Rani'),('Vaibhav');

--select cname, tname and sname from course, teacher and student
SELECT cname, tname, sname from Course, Teacher, Student WHERE Course.cid = Student.cid AND Course.tid = Teacher.tid;

--select cname and sname from course and student
SELECT cname, sname from Course, Student WHERE Course.cid = Student.cid;

--select cname, tname from course, teacher
SELECT cname, tname from Course, Teacher WHERE Course.tid = Teacher.tid;

-- get the list of students who wants to learn java and get the name of teacher who teach java
SELECT sname, tname, cname FROM Student, Teacher, Course WHERE cname = 'Java' AND Course.cid = Student.cid AND Course.tid = Teacher.tid;

-- how many students wants to learn Python
SELECT COUNT(sid) FROM Student, Course WHERE cname = 'Python' AND Course.cid = Student.cid;

-- how many students wants to learn Java
SELECT COUNT(sid) FROM Student, Course WHERE cname = 'Java' AND Course.cid = Student.cid;

-- how many course teaches vaibhav
SELECT COUNT(cid) FROM Teacher, Course WHERE tname = 'Vaibhav' AND Course.tid = Teacher.tid;

-- how many course teaches Gaurav
SELECT COUNT(cid) FROM Teacher, Course WHERE tname = 'Gaurav' AND Course.tid = Teacher.tid;
