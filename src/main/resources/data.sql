INSERT INTO Authors (author_id, name, country)
VALUES (1, 'George Orwell', 'UK'),
       (2, 'J.K. Rowling', 'UK'),
       (3, 'Gabriel Garcia Marquez', 'Colombia'),
       (4, 'Haruki Murakami', 'Japan'),
       (5, 'Stephen King', 'USA');

INSERT INTO Books (book_id, title, author_id, genre, price, publication_year)
VALUES (1, '1984', 1, 'Dystopian', 10.99, 1949),
       (2, 'Harry Potter and the Sorcerer''s Stone', 2, 'Fantasy', 12.99, 1997),
       (3, 'One Hundred Years of Solitude', 3, 'Magical Realism', 13.99, 1967),
       (4, 'Norwegian Wood', 4, 'Romance', 15.50, 1987),
       (5, 'The Shining', 5, 'Horror', 9.99, 1977),
       (6, 'Kafka on the Shore', 4, 'Magical Realism', 16.50, 2002);

INSERT INTO Customers (customer_id, name, city)
VALUES (1, 'Alice Johnson', 'New York'),
       (2, 'Bob Smith', 'London'),
       (3, 'Charlie Brown', 'Tokyo'),
       (4, 'Diana Prince', 'Bogota'),
       (5, 'Edward Norton', 'Chicago');

INSERT INTO Purchases (purchase_id, customer_id, book_id, purchase_date)
VALUES (1, 1, 2, '2024-01-15'),
       (2, 2, 1, '2024-02-20'),
       (3, 3, 4, '2024-03-25'),
       (4, 4, 3, '2024-04-05'),
       (5, 1, 5, '2024-06-10'),
       (6, 5, 2, '2024-08-13'),
       (7, 1, 1, '2024-09-17'),
       (8, 3, 6, '2024-10-22');