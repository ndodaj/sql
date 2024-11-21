/**

    UNIQUE is a constraint in SQL used to ensure that all values in a column or a set of columns are distinct.
    When applied to a column or a combination of columns, it prevents duplicate values from being inserted into the table.
    This constraint is crucial for maintaining data integrity, especially for fields like email addresses, usernames,
    or product codes where uniqueness is required. UNIQUE constraints can be applied during table creation or added later,
    and they automatically create an index on the specified column(s) for improved query performance.
    Unlike PRIMARY KEY constraints, UNIQUE columns can contain NULL values (unless explicitly disallowed),
    and a table can have multiple UNIQUE constraints.

 */

CREATE TABLE Authors
(
    author_id INT PRIMARY KEY,
    name      VARCHAR(100),
    username  VARCHAR(100) UNIQUE,
    country   VARCHAR(50)
);

-- OR:
CREATE TABLE Authors
(
    author_id INT PRIMARY KEY,
    name      VARCHAR(100),
    username  VARCHAR(100),
    country   VARCHAR(50),
    UNIQUE (username)

);

ALTER TABLE Authors ADD UNIQUE (username);

ALTER TABLE Authors
    ADD CONSTRAINT unique_username UNIQUE (username);

ALTER TABLE Authors DROP CONSTRAINT unique_username;