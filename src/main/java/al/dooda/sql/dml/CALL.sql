/**
  n SQL, the CALL command is used to invoke stored procedures.
  A stored procedure is a precompiled set of SQL statements that can be executed as a single unit.
  The CALL command allows you to execute these procedures, often passing input and output parameters.

  Syntax: CALL procedure_name([parameter1, parameter2, ...]);

 */

CREATE PROCEDURE get_all_books()
    BEGIN
SELECT * FROM BOOKS;
END;


CALL get_all_books();

