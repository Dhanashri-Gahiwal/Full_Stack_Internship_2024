-- view contact records
SELECT * FROM contact;

-- create function and find the total contact
CREATE OR REPLACE FUNCTION totalContact()
RETURNS integer AS $total_contact$
declare
	total_contact integer;
BEGIN
	SELECT COUNT(*) into total_contact FROM contact;
	RETURN total_contact;
END;
$total_contact$ LANGUAGE plpgsql;

SELECT totalContact();

-- create function and find the age of id 2
CREATE OR REPLACE FUNCTION findAge()
RETURNS integer AS $find_age$
declare
	find_age integer;
BEGIN
	SELECT age into find_age FROM contact WHERE id = 2;
	RETURN find_age;
END;
$find_age$ LANGUAGE plpgsql;

SELECT findAge();

-- create function and find the age of id 2 using parameterized function
CREATE OR REPLACE FUNCTION findage(cid integer)
RETURNS integer AS $find_age$
declare
	find_age integer;
BEGIN
	SELECT age into find_age FROM contact WHERE id = cid;
	RETURN find_age;
END;
$find_age$ LANGUAGE plpgsql;

SELECT findage(10);

-- create function and find the sum of 2 numbers using parameterized function
CREATE OR REPLACE FUNCTION addition(n1 integer, n2 integer)
RETURNS integer AS $add$
declare
	add integer;
BEGIN
	SELECT n1 + n2 into add;
	RETURN add;
END;
$add$ LANGUAGE plpgsql;

SELECT addition(10,20);

-- create function and find the name using parameterized function
CREATE OR REPLACE FUNCTION findname(conid integer)
RETURNS varchar AS $cname$
declare
	cname varchar;
BEGIN
	SELECT name into cname FROM contact WHERE id = conid;
	RETURN cname;
END;
$cname$ LANGUAGE plpgsql;

SELECT findname(8);

-- create function and find the name and age using parameterized function
CREATE OR REPLACE FUNCTION finddata(conid integer)
RETURNS varchar AS $data$
declare
	data varchar;
BEGIN
	SELECT concat(name,' ',age) into data FROM contact WHERE id = conid;
	RETURN data;
END;
$data$ LANGUAGE plpgsql;

SELECT finddata(4);