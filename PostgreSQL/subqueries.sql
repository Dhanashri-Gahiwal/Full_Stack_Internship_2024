-- create employee table with the fields of id, ename, dept, deg, sal
CREATE TABLE employee(id SERIAL PRIMARY KEY, 
					  ename VARCHAR(50), 
					  dept VARCHAR(50), 
					  deg VARCHAR(50), 
					  sal int);

-- insert records into employee table
INSERT INTO employee(ename, dept, deg, sal) VALUES('Shree', 'comp', 'wed designer',25000);
INSERT INTO employee(ename, dept, deg, sal) VALUES('Swami', 'comp', 'wed developer',35000);
INSERT INTO employee(ename, dept, deg, sal) VALUES('Sonal', 'chem', 'lab',15000);
INSERT INTO employee(ename, dept, deg, sal) VALUES('jeet', 'phy', 'hod',50000);
INSERT INTO employee(ename, dept, deg, sal) VALUES('Jitesh', 'phy', 'prof',70000);

-- view all records of employee
SELECT * FROM employee;

-- view maximum salary of the employee
SELECT MAX(sal) FROM employee;

-- view minimum salary of the employee
SELECT MIN(sal) FROM employee;

-- view sum of salary of the employee
SELECT SUM(sal) FROM employee;

-- view average salary of the employee
SELECT AVG(sal) FROM employee;

-- view the total number of records of employee
SELECT COUNT(id) FROM employee;

-- view maximum salary, minimum salary, average salary and the total number of records of employee
SELECT MAX(sal),MIN(sal),SUM(sal),AVG(sal),COUNT(id) FROM employee;

-- view employee name and salary of employee whose salary is minimum
SELECT ename, sal FROM employee WHERE sal=(SELECT MIN(sal) FROM employee);

-- view employee name and salary of employee whose salary is maximum
SELECT ename, sal FROM employee WHERE sal=(SELECT MAX(sal) FROM employee);

-- view employee name and salary of employee whose salary is max and min
SELECT ename, sal FROM employee WHERE sal=(SELECT MIN(sal) FROM employee) OR sal=(SELECT MAX(sal) FROM employee);

-- view employee name and salary of employee in descending order by sal
SELECT ename, sal FROM employee ORDER BY sal DESC;

-- view employee name and salary of employee in ascending order by sal
SELECT ename, sal FROM employee ORDER BY sal ASC;

-- view 1st record with employee name and salary of employee in descending order by sal
SELECT ename, sal FROM employee ORDER BY sal DESC LIMIT 1;

-- view 1st record with employee name and salary of employee in ascending order by sal
SELECT ename, sal FROM employee ORDER BY sal ASC LIMIT 1;

-- view 2nd record with employee name and salary of employee in ascending order by sal
SELECT ename, sal FROM employee ORDER BY sal ASC LIMIT 1 OFFSET 2;

-- view 2nd record with employee name and salary of employee in descending order by sal
SELECT ename, sal FROM employee ORDER BY sal DESC LIMIT 1 OFFSET 2;

-- view 2nd two records with employee name and salary of employee in ascending order by sal
SELECT ename, sal FROM employee ORDER BY sal ASC LIMIT 2 OFFSET 2;

-- view 2nd two records with employee name and salary of employee in descending order by sal
SELECT ename, sal FROM employee ORDER BY sal DESC LIMIT 2 OFFSET 2;

-- view 2nd record with employee name and salary of employee in descending order by sal without using offset and using where clause
SELECT ename, sal FROM employee WHERE sal<(SELECT MAX(sal) FROM employee) ORDER BY sal DESC LIMIT 1;