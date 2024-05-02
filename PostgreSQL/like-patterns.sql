-- view all records of employee
SELECT * FROM employee;

-- view all records where employee name start from 'S'
SELECT * FROM employee WHERE ename LIKE 'S%';

-- view all records where employee name end with 'l'
SELECT * FROM employee WHERE ename LIKE '%l';

-- view all records where employee name include 'a' anywhere
SELECT * FROM employee WHERE ename LIKE '%a%';

-- view all records where employee name second letter is 'i'
SELECT * FROM employee WHERE ename LIKE '_i%';

-- view all records where employee name second last letter is 's'
SELECT * FROM employee WHERE ename LIKE '%s_';