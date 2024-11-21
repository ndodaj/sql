/**

A CHECK constraint in SQL is used to enforce data integrity by specifying a condition that must be true for each row in a table.
  It allows you to define custom rules or restrictions on the values that can be inserted or updated in one or more columns.

  CHECK constraints help maintain data quality by preventing invalid or inconsistent data from being added to the database,
  ensuring that only data meeting specified criteria is accepted.

 */

CREATE TABLE Customers
(
    customer_id INT PRIMARY KEY,
    name        VARCHAR(100),
    city        VARCHAR(50),
    age         INT
    CHECK( age >= 18 )
);

CREATE TABLE Customers
(
    customer_id INT PRIMARY KEY,
    name        VARCHAR(100),
    city        VARCHAR(50),
    age         INT
    CONSTRAINT check_customer CHECK( age >= 18 )
);

ALTER TABLE Customers ADD CHECK (Age>=18);

ALTER TABLE Customers ADD CONSTRAINT check_age CHECK (Age>=18);

ALTER TABLE Customers DROP CONSTRAINT check_age;


