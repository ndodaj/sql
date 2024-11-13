CREATE TABLE Authors
(
    author_id INT PRIMARY KEY,
    name      VARCHAR(100),
    country   VARCHAR(50)
);

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

CREATE TABLE Customers
(
    customer_id INT PRIMARY KEY,
    name        VARCHAR(100),
    city        VARCHAR(50)
);

CREATE TABLE Purchases
(
    purchase_id   INT PRIMARY KEY,
    customer_id   INT,
    book_id       INT,
    purchase_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
    FOREIGN KEY (book_id) REFERENCES Books (book_id)
);