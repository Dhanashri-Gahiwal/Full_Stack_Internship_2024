-- view the contact records
SELECT * FROM contact;

-- create view view-name as select query
CREATE VIEW DATA AS SELECT name, mobile, city FROM contact;

-- display view
SELECT * FROM DATA;