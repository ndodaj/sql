/**
  The UPDATE statement in SQL is used to modify existing records in a table.
  It allows you to change the values of one or more columns based on specified conditions.
  The basic syntax includes specifying the table name, the columns to be updated with their new values,
  and optionally, a WHERE clause to filter which rows should be affected.
  UPDATE can be used in conjunction with subqueries, joins, and CTEs (Common Table Expressions) for more complex data modifications.
  It’s important to use UPDATE carefully, especially with the WHERE clause, to avoid unintended changes to data.
  In transactional databases, UPDATE operations can be rolled back if they’re part of a transaction that hasn’t been committed.
 */

UPDATE PUBLIC.BOOKS b
SET b.TITLE = 'UPDATED TITLE 2'
WHERE b.BOOK_ID = 1 ;