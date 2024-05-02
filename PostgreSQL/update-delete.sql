-- view all records of employee
SELECT * FROM employee;

-- update deg to software developer where id is 2
UPDATE employee SET deg = 'Software Developer' WHERE id = 2;

-- update deg to Web Designer where deg is 'wed dsigner'
UPDATE employee SET deg = 'Web Designer' WHERE deg = 'wed designer';

-- update sal of every employee by 2000 whose designation is 'Web Designer' and 'Software Developer'
UPDATE employee SET sal = sal + 1000 WHERE deg IN('Web Designer','Software Developer');

-- update sal of every employee by 2000
UPDATE employee SET sal = sal+2000;

-- delete all records
DELETE from employee;

-- delete record with id is 3
DELETE from employee WHERE id = 3;

-- delete record those salary is greater than 50000
DELETE from employee WHERE sal > 50000;