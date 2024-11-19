/**

  GRANT and REVOKE are SQL commands used to manage user permissions in a database.
  GRANT is used to give specific privileges (such as SELECT, INSERT, UPDATE, DELETE) on database objects to users or roles,
  while REVOKE is used to remove these privileges. These commands are essential for implementing database security,
  controlling access to sensitive data, and ensuring that users have appropriate permissions for their roles.

  By using GRANT and REVOKE, database administrators can fine-tune access control,
  adhering to the principle of least privilege in database management.

 */

-- GRANT
GRANT UPDATE ON PRIVATE.TENAGERS to ADMIN;
GRANT INSERT ON PRIVATE.TENAGERS to ADMIN;
GRANT SELECT ON PRIVATE.TENAGERS to ADMIN;
GRANT SELECT, DELETE ON PRIVATE.TENAGERS to ADMIN;
GRANT ALL PRIVILEGES ON PRIVATE.TENAGERS to ADMIN;

-- REVOKE
REVOKE UPDATE ON PRIVATE.TENAGERS FROM ADMIN;
REVOKE INSERT ON PRIVATE.TENAGERS FROM ADMIN;
REVOKE SELECT ON PRIVATE.TENAGERS FROM ADMIN;
REVOKE SELECT, INSERT ON PRIVATE.TENAGERS FROM ADMIN;
REVOKE ALL PRIVILEGES ON PRIVATE.TENAGERS FROM ADMIN;