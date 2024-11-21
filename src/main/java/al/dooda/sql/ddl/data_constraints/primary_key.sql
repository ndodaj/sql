/**

  Primary Key
A primary key in SQL is a unique identifier for each record in a database table.
  It ensures that each row in the table is uniquely identifiable, meaning no two rows can have the same primary key value.
  A primary key is composed of one or more columns, and it must contain unique values without any NULL entries.
  The primary key enforces entity integrity by preventing duplicate records and ensuring that each record
  can be precisely located and referenced, often through foreign key relationships in other tables.
  Using a primary key is fundamental for establishing relationships between tables and maintaining the integrity of the data model.


 */

CREATE TABLE Authors
(
    author_id INT PRIMARY KEY,
    name      VARCHAR(100),
    country   VARCHAR(50)
);

-- second method
CREATE TABLE Authors
(
    author_id INT NOT NULL ,
    name      VARCHAR(100),
    country   VARCHAR(50),
    PRIMARY KEY (author_id)

);

-- third way
CREATE TABLE Authors
(
    author_id INT NOT NULL ,
    name      VARCHAR(100),
    country   VARCHAR(50),
    CONSTRAINT author_pk PRIMARY KEY (author_id)

);

-- if we want to create a PRIMARY KEY on an existing table:
ALTER TABLE Authors ADD PRIMARY KEY (author_id);

-- to drop a PRIMARY KEY:
ALTER TABLE Authors DROP PRIMARY KEY;