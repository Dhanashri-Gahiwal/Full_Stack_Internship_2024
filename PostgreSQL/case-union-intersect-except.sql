-- view records of contact
SELECT * FROM contact;

-- view records of employee
SELECT * FROM employee;

-- view all records of contact and employee
SELECT id,name FROM contact UNION SELECT id, ename FROM employee; 

-- view common records of contact and employee
SELECT id,name FROM contact INTERSECT SELECT id, ename FROM employee;

-- view all records of contact except employee
SELECT id,name FROM contact EXCEPT SELECT id, ename FROM employee;

-- view all records of employee except contact
SELECT id,ename FROM employee EXCEPT SELECT id, name FROM contact;

SELECT ename,
CASE
	WHEN sal < 30000 THEN 'Low sal'
	WHEN sal > 30000 THEN 'High sal'
ELSE
	'Normal sal'
END
FROM employee;
