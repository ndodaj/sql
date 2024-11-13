-- CREATE

CREATE TABLE PUBLIC.person (id INTEGER, name VARCHAR);

CREATE SCHEMA PRIVATE;

CREATE TABLE PRIVATE.private_table(
                                      id INTEGER PRIMARY KEY,
                                      name VARCHAR,
                                      description VARCHAR(255)
);

CREATE CONSTANT PRIVATE.PRIVATE_KEY VALUE 123; --> create a constant value
    CREATE CONSTANT PRIVATE.PRIVATE_STRING VALUE 'test'; --> create a constant string

CREATE DOMAIN PRIVATE.TENNAGER AS REAL CHECK (value >= 13 AND value <=19); -- this is essentially a new data type with constrains
-- The user who defines a domain becomes its owner.
-- Domains are useful for abstracting common constrains of fields into a single location for maintenance
CREATE TABLE PRIVATE.teenagers (id INTEGER, age TENNAGER); -- if i try to insert a value outside of defined value, i get an error

CREATE INDEX user_data_fk on PRIVATE.TENAGERS(id); --> create an index on a table
CREATE UNIQUE INDEX user_data_fk on PRIVATE.TENAGERS(id); --> duplicate values are not allowed

