/**
  The ALTER TABLE statement in SQL is used to modify the structure of an existing table.
  This includes adding, dropping, or modifying columns, changing the data type of a column,
  setting default values, and adding or dropping primary or foreign keys.
 */

ALTER TABLE table_name ADD column_name column_definition;

ALTER TABLE supplier ADD (supplier_name char(50), city char(45));

ALTER TABLE PRIVATE.TENAGERS ADD COLUMN test VARCHAR;

-- MODIFY
ALTER TABLE table_name MODIFY column_name column_type;

-- DROP
ALTER TABLE table_name DROP COLUMN column_name;

-- RENAME
ALTER TABLE table_name RENAME COLUMN old_name TO new_name;

-- rename table
ALTER TABLE table_name RENAME TO new_table_name;