-- Apply trigger after insert
-- viw the structure of employee
SELECT * FROM employee;

-- Create trigger
CREATE TRIGGER emp_sal AFTER INSERT ON employee
FOR EACH ROW EXECUTE PROCEDURE emp_data();

-- Create procedure or function
CREATE OR REPLACE FUNCTION emp_data()
RETURNS TRIGGER AS $emp_sal$
BEGIN
INSERT INTO new_emp(id,ename,sal) VALUES(new.id, new.ename, new.sal);
RETURN NEW;
END;
$emp_sal$ LANGUAGE plpgsql;

-- create table new_emp
CREATE TABLE new_emp(eid SERIAL, id INT, ename VARCHAR(50), sal INT);

-- insert record into employee
INSERT INTO employee(ename, dept, deg, sal) VALUES('test','test','test',25000);

-- view the records of new_emp
SELECT * FROM new_emp;

-- *******************************************************************************
-- Apply trigger before delete
-- viw the structure of employee
SELECT * FROM employee;

-- Create trigger
CREATE TRIGGER emp_bck BEFORE DELETE ON employee
FOR EACH ROW EXECUTE PROCEDURE emp_bck();

-- Create procedure or function
CREATE OR REPLACE FUNCTION emp_bck()
RETURNS TRIGGER AS $emp_bck$
BEGIN
INSERT INTO new_empbck(id,ename,sal) VALUES(old.id, old.ename, old.sal);
RETURN NEW;
END;
$emp_bck$ LANGUAGE plpgsql;

-- create table new_empbck
CREATE TABLE new_empbck(eid SERIAL, id INT, ename VARCHAR(50), sal INT);

-- delete record into employee
DELETE FROM employee WHERE id = 2;

-- view the records of new_emp
SELECT * FROM new_empbck;

-- *******************************************************************************
-- Apply trigger before update
-- viw the structure of employee
SELECT * FROM employee;

-- Create trigger
CREATE TRIGGER emp_upbck BEFORE UPDATE ON employee
FOR EACH ROW EXECUTE PROCEDURE emp_upbck();

-- Create procedure or function
CREATE OR REPLACE FUNCTION emp_upbck()
RETURNS TRIGGER AS $emp_upbck$
BEGIN
INSERT INTO new_empupbck(id,ename,sal) VALUES(old.id, old.ename, old.sal);
RETURN NEW;
END;
$emp_upbck$ LANGUAGE plpgsql;

-- create table new_empbck
CREATE TABLE new_empupbck(eid SERIAL, id INT, ename VARCHAR(50), sal INT);

-- update record into employee
UPDATE employee SET ename = 'testing' WHERE id = 6;

-- view the records of new_emp
SELECT * FROM new_empupbck;