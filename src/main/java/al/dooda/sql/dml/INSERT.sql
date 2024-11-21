/**
  The “INSERT” statement is used to add new rows of data to a table in a database.
  There are two main forms of the INSERT command: INSERT INTO which, if columns are not named,
  expects a full set of columns, and INSERT INTO table_name (column1, column2, ...)
  where only named columns will be filled with data.

  INSERT INTO table_name (column1, column2, column3, ...)
    VALUES (value1, value2, value3, ...);

 */

-- Insert single row
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

-- Inserting multiple rows
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
    ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
    ('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
    ('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');