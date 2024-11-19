/**
  The COMMENT command in SQL is used to add descriptive text (comments) to database objects like
  tables, columns, views, and other schema objects.
  This metadata can help document the purpose of the object or provide additional context for users.
 */

COMMENT ON TABLE PRIVATE.TENAGERS is 'Table comment';

COMMENT ON COLUMN PRIVATE.TENAGERS.AGE is 'AGE COMMENT';