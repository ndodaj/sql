/**
  The EXPLAIN CALL command is used to analyze and understand the execution plan of a stored procedure when it is called.
  This feature is primarily available in certain SQL databases like MySQL to help developers debug and optimize their procedures.

  Provides insight into how the stored procedure is executed.
  Shows the execution plan for any SQL statements inside the procedure.

  EXPLAIN CALL procedure_name([parameter1, parameter2, ...]);

 */

EXPLAIN CALL get_all_books();