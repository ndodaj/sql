/**
  SELECT is one of the most fundamental SQL commands, used to retrieve data from one or more tables in a database.
  It allows you to specify which columns to fetch, apply filtering conditions,
  sort results, and perform various operations on the data.

  The SELECT statement is versatile, supporting joins, subqueries, aggregations, and more,
  making it essential for data querying and analysis in relational databases.
 */

SELECT * from AUTHORS;
SELECT a.*  from AUTHORS a; -- select all fields
SELECT a.AUTHOR_ID, a.NAME, a.COUNTRY  from AUTHORS a; -- select specified fields
SELECT a.NAME from AUTHORS a; -- select single field

-- FROM
    /**
      The FROM clause in SQL specifies the tables from which the retrieval should be made.
      It is an integral part of SELECT statements and variants of SELECT like SELECT INTO and SELECT WHERE
      FROM can be used to join tables as well.
      Typically, FROM is followed by space delimited list of tables in which the SELECT operation is to be executed.
     */
SELECT a.NAME FROM AUTHORS a;
SELECT  b.PUBLICATION_YEAR, a.name FROM  BOOKS b, AUTHORS a;

-- WHERE
    /**
      SQL provides a WHERE clause that is basically used to filter the records.
      If the condition specified in the WHERE clause satisfies, then only it returns the specific value from the table.
      You should use the WHERE clause to filter the records and fetching only the necessary records.
      The WHERE clause is not only used in SELECT statement, but it is also used in UPDATE, DELETE statement, etc.,
      which we will learn in subsequent chapters.

      SELECT column1, column2, ...
        FROM table_name
        WHERE condition;

      The following operators can be used in the WHERE clause:
            =	Equal
            >	Greater than
            <	Less than
            >=	Greater than or equal
            <=	Less than or equal
            <>	Not equal. Note: In some versions of SQL this operator may be written as !=
            BETWEEN	Between a certain range
            LIKE	Search for a pattern
            IN	To specify multiple possible values for a column
     */
SELECT b.* from BOOKS b where b.PUBLICATION_YEAR > 1990;

-- ORDER BY
/**
  The ORDER BY clause in SQL is used to sort the result set of a query by one or more columns.
  By default, the sorting is in ascending order, but you can specify descending order using the DESC keyword.
  The clause can sort by numeric, date, or text values, and multiple columns can be sorted by listing them in the ORDER BY clause,
  each with its own sorting direction. This clause is crucial for organizing data in a meaningful sequence,
  such as ordering by a timestamp to show the most recent records first, or alphabetically by name.

    SELECT column1, column2, ...
    FROM table_name
    ORDER BY column1, column2, ... ASC|DESC;

 */

-- GROUP BY
    /**
      GROUP BY is an SQL clause used in SELECT statements to arrange identical data into groups.
      It’s typically used with aggregate functions (like COUNT, SUM, AVG) to perform calculations on each group of rows.
      GROUP BY collects data across multiple records and groups the results by one or more columns,
      allowing for analysis of data at a higher level of granularity.
      This clause is fundamental for generating summary reports, performing data analysis,
      and creating meaningful aggregations of data in relational databases.
     */
SELECT COUNT(b.AUTHOR_ID) as sasia, b.title as titulli FROM BOOKS b GROUP BY TITLE ORDER BY sasia DESC ;

-- HAVING
    /**
      The HAVING clause is used in combination with the GROUP BY clause to filter the results of GROUP BY.
      It is used to mention conditions on the group functions, like SUM, COUNT, AVG, MAX or MIN.

      It’s important to note that where WHERE clause introduces conditions on individual rows,
      HAVING introduces conditions on groups created by the GROUP BY clause.

      Also note, HAVING applies to summarized group records, whereas WHERE applies to individual records.
     */
SELECT COUNT(b.AUTHOR_ID) as sasia, b.title as titulli
FROM BOOKS b
GROUP BY TITLE
HAVING COUNT(b.AUTHOR_ID) > 0
ORDER BY sasia DESC ;


