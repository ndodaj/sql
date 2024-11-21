/**

  A foreign key in SQL is a column or group of columns in one table that refers to the primary key of another table.
  It establishes a link between two tables, enforcing referential integrity and maintaining relationships between related data.
  Foreign keys ensure that values in the referencing table correspond to valid values in the referenced table,
  preventing orphaned records and maintaining data consistency across tables.
  They are crucial for implementing relational database designs and supporting complex queries that join multiple tables.

 */

CREATE TABLE Books
(
    book_id          INT PRIMARY KEY,
    title            VARCHAR(100),
    author_id        INT,
    genre            VARCHAR(50),
    price            DECIMAL(5, 2),
    publication_year INT,
    FOREIGN KEY (author_id) REFERENCES Authors (author_id)
);

-- another way to create a FK
CREATE TABLE Books
(
    book_id          INT PRIMARY KEY,
    title            VARCHAR(100),
    author_id        INT REFERENCES Authors(author_id), -- ON DELETE CASCADE ON UPDATE CASCADE
    genre            VARCHAR(50),
    price            DECIMAL(5, 2),
    publication_year INT

);