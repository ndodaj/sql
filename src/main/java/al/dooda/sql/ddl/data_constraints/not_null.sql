-- NOT NULL
/**

The NOT NULL constraint in SQL ensures that a column cannot have a NULL value.
  Thus, every row/record must contain a value for that column.
  It is a way to enforce certain fields to be mandatory while inserting records or updating records in a table.

For instance, if you’re designing a table for employee data,
  you might want to ensure that the employee’s id and name are always provided.
  In this case, you’d use the NOT NULL constraint.


 */

CREATE TABLE Customers
(
    customer_id INT PRIMARY KEY,
    name        VARCHAR(100) NOT NULL, -- name cannot be null
    city        VARCHAR(50)
);