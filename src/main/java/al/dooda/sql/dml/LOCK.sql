/**
  The LOCK command in SQL is used to control access to database resources like tables during transactions.
  It ensures data integrity and consistency by preventing conflicts, such as simultaneous reads and writes to the same resource.
  Locking can prevent race conditions and maintain the integrity of operations in multi-user environments.

  Types of Locks
    Shared Lock (Read Lock):
        - Allows multiple transactions to read a resource but prevents writing.
        - Ensures no data modification while data is being read.

    Exclusive Lock (Write Lock):
        - Prevents all other transactions from reading or writing the resource.
        - Ensures that only one transaction can modify the resource at a time.

    Syntax: LOCK TABLES table_name [AS alias] lock_type;
        lock_type: Specifies the type of lock (READ, WRITE, SHARE, EXCLUSIVE etc)
        AS alias: Optional; provides an alias for the locked table.


 */

LOCK TABLES books READ;
UNLOCK TABLES;


