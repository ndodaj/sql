-- CREATE

CREATE TABLE PUBLIC.person (id INTEGER, name VARCHAR);

CREATE SCHEMA PRIVATE; --> creates a new schema
    -- A schema is a collection of database objects like tables, triggers, stored procedures, etc
    -- A schema is connected with a user which is known as the schema owner. The database may have one or more schema.


CREATE TABLE PRIVATE.private_table(
    id          INTEGER PRIMARY KEY,
    name        VARCHAR,
    description VARCHAR(255)
);


CREATE CONSTANT PRIVATE.PRIVATE_KEY VALUE 123; --> create a constant value
CREATE CONSTANT PRIVATE.PRIVATE_STRING VALUE 'test'; --> create a constant string

CREATE DOMAIN PRIVATE.TENNAGER AS REAL CHECK (value >= 13 AND value <=19); -- this is essentially a new data type with constrains
-- The user who defines a domain becomes its owner.
-- Domains are useful for abstracting common constrains of fields into a single location for maintenance
CREATE TABLE PRIVATE.teenagers (id INTEGER, age TENNAGER); -- if i try to insert a value outside of defined value, i get an error

CREATE INDEX user_data_fk on PRIVATE.TENAGERS(id); --> create an index on a table.
    -- Indexes are used to retrieve data from the database more quickly than otherwise
CREATE UNIQUE INDEX user_data_fk on PRIVATE.TENAGERS(id); --> duplicate values are not allowed

CREATE ROLE data_analyst; --> Roles allow you to group multiple privileges and assign them to users in a database, making it easier to manage permissions
CREATE USER user IDENTIFIED BY "password";

CREATE SEQUENCE PRIVATE.private_seq;
    --> a sequence produces a series of numerical values in accordance with the specification used to create it
    --> sequences are not linked to particular tables
    --> Applications use a sequence object to access the next value in the sequence.
    --> Sequences are frequently used in many databases because many applications require each row in a table to contain
        -- a unique value and sequences provide an easy way to generate them.
CREATE SEQUENCE sequence_name
    START WITH 1
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 13333333
    CYCLE ;



CREATE TYPE PRIVATE.private_type as INTEGER; --> similar to domain
 /**    With CREATE DOMAIN you can create a subtype that is based on one existing type (adding constraints to it).
        With CREATE TYPE you can create composite types or enum or others that they are structurally different to existing types.
 **/


 /** In SQL, a synonym is an alias for another database object (like a table, view, or stored procedure) **/
CREATE SYNONYM PRIVATE.synonym_table for PRIVATE.PRIVATE_TABLE;

/** In Sql, a view is a virtual table created by query that selects data from one or more tables
                CREATE VIEW view_name AS
                SELECT column1, column2
                FROM table_name
                WHERE condition;

  **/
CREATE VIEW PRIVATE.PRIVATE_VIEW as (
SELECT t.ID as tennage_id, t.AGE as age, p.ID as private_id, p.NAME as name, p.DESCRIPTION as description
FROM PRIVATE.PRIVATE_TABLE p, PRIVATE.TENAGERS t);

