/**
  DELETE is an SQL statement used to remove one or more rows from a table.
  It allows you to specify which rows to delete using a WHERE clause, or delete all rows if no condition is provided.
  DELETE is part of the Data Manipulation Language (DML) and is used for data maintenance,
  removing outdated or incorrect information, or implementing business logic that requires data removal.
  When used without a WHERE clause, it empties the entire table while preserving its structure, unlike the TRUNCATE command.
 */

DELETE FROM table_name WHERE condition;

DELETE FROM PRIVATE.TENAGERS WHERE ID = 1;