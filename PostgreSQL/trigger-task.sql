-- create a product table
CREATE TABLE Product(pid SERIAL, pname VARCHAR(50), price INT, description VARCHAR(50));

-- create a stock table
CREATE TABLE Stock(sid SERIAL, squantity INT, pid INT);

-- create a transaction table
CREATE TABLE Transact(tid SERIAL, cname VARCHAR(50), mob INT, pid INT, pquantity INT, total INT);

-- view table structure of product
SELECT * FROM Product;

-- view table structure of stock
SELECT * FROM Stock;

-- view table structure of transaction
SELECT * FROM Transact;

-- insert records into product table
INSERT INTO Product(pname, price, description)VALUES('Headphone', 200, 'Buetooth headphone'),
('Lenovo Laptop', 50000, 'Lenovo laptop with ssd'),('Android phone', 40000,'Android phone pro');

-- insert records into stock table
INSERT INTO Stock(squantity,pid)VALUES(500,1),(100,2),(50,3);

-- insert records into transaction table
INSERT INTO Transact(cname,mob,pid,pquantity)VALUES('Rahul',1234567890,1,2);
INSERT INTO Transact(cname,mob,pid,pquantity)VALUES('Dhanshri',1345678901,1,3);
INSERT INTO Transact(cname,mob,pid,pquantity)VALUES('Tejas',1456789012,2,1);

-- update transaction table
UPDATE Transact SET total = Product.price*Transact.pquantity FROM Product WHERE Product.pid = Transact.pid;

-- Apply trigger after insert
-- viw the structure of stock
SELECT * FROM Stock;

-- Create trigger
CREATE TRIGGER stk AFTER INSERT ON Transact
FOR EACH ROW EXECUTE PROCEDURE stk_chk();

-- Create procedure or function
CREATE OR REPLACE FUNCTION stk_chk()
RETURNS TRIGGER AS $stk$
BEGIN
UPDATE Stock SET squantity = squantity - new.pquantity WHERE pid = new.pid ;
RETURN NEW;
END;
$stk$ LANGUAGE plpgsql;

-- insert record into transact table
INSERT INTO Transact(cname,mob,pid,pquantity)VALUES('Rajesh',1234567899,3,1);

-- viw the structure of stock
SELECT * FROM Stock;
