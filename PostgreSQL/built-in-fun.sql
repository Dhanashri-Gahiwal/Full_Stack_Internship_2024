-- view all records of employee
SELECT * FROM employee;

-- view all records with name, length of name and convert it into upper case
SELECT ename, LENGTH(ename), UPPER(ename) FROM employee;

-- concat department and designation column in one column
SELECT CONCAT(dept,',',deg) AS detail FROM employee;

-- view the ascii value of employee name whose id is 2
SELECT ASCII(ename) FROM employee WHERE id = 2;

-- view the square root of 25
SELECT |/25;

-- view the cube root of 64
SELECT ||/64;

-- view the 2^3
SELECT 2^3;

-- ceil function
SELECT CEIL(9.4);
SELECT CEIL(9.8);

-- floor function
SELECT FLOOR(9.6);
SELECT FLOOR(9.1);

-- round function
SELECT ROUND(9.6);
SELECT ROUND(9.2);
