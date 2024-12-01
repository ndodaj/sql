-- STRING FUNCTIONS

/**    CONCAT

  CONCAT is an SQL function used to combine two or more strings into a single string.
  It takes multiple input strings as arguments and returns a new string that is the
  concatenation of all the input strings in the order they were provided.
  CONCAT is commonly used in SELECT statements to merge data from multiple columns,
  create custom output formats, or generate dynamic SQL statements.

  CONCAT function syntax : CONCAT ( string_value1, string_value2 [, string_valueN ] )

 */
SELECT CONCAT(a.name, '|', a.COUNTRY) FROM AUTHORS a;

/**   LENGTH
  The LENGTH function in SQL returns the number of characters in a string.
  It’s used to measure the size of text data, which can be helpful for data validation, formatting, or analysis.
  In some database systems, LENGTH may count characters differently for multi-byte character sets.
  Most SQL dialects support LENGTH, but some may use alternative names like LEN (in SQL Server) or CHAR_LENGTH.
  This function is particularly useful for enforcing character limits, splitting strings,
  or identifying anomalies in string data.
 */

SELECT a.name, LENGTH(a.NAME) as name_length FROM AUTHORS a;

/** SUBSTRING
  SUBSTRING is a SQL function used to extract a portion of a string.
  It allows you to specify the starting position and length of the substring you want to extract.
  This function is valuable for data manipulation, parsing, and formatting tasks.
  The exact syntax may vary slightly between database systems, but the core functionality remains consistent,
  making it a versatile tool for working with string data in databases.

  Syntax: SUBSTRING(string, start, length)

 */

SELECT a.name, SUBSTRING(a.NAME, LENGTH(a.NAME) -2 , LENGTH(a.NAME)) as last_3_characters FROM AUTHORS a;

/** REPLACE
  The REPLACE function in SQL is used to substitute all occurrences of a specified substring within a string with a new substring.
  It takes three arguments: the original string, the substring to be replaced, and the substring to replace it with.
  If the specified substring is found in the original string, REPLACE returns the modified string with all instances
  of the old substring replaced by the new one. If the substring is not found, the original string is returned unchanged.
  This function is particularly useful for data cleaning tasks, such as correcting typos, standardizing formats, or replacing obsolete data.

  REPLACE(string, old_string, new_string)

 */
SELECT a.name, REPLACE(a.NAME, 'o', '0') as replace_o_with_0 FROM AUTHORS a;

/**  UPPER
  UPPER() is a string function in SQL used to convert all characters in a specified string to uppercase.
  This function is particularly useful for data normalization, case-insensitive comparisons, or formatting output.
  UPPER() typically works on alphabetic characters and leaves non-alphabetic characters unchanged.
  It’s often used in SELECT statements to display data, in WHERE clauses for case-insensitive searches, or in data manipulation operations.
  Most SQL databases also provide a complementary LOWER() function for converting to lowercase.
  When working with international character sets, it’s important to be aware of potential locale-specific behavior of UPPER().

 */
SELECT a.name, UPPER(a.NAME) as upper_name FROM AUTHORS a;

/** LOWER
  The LOWER function in SQL converts all characters in a specified string to lowercase.
  It’s a string manipulation function that takes a single argument (the input string) and returns
  the same string with all alphabetic characters converted to their lowercase equivalents.
  LOWER is useful for standardizing data, making case-insensitive comparisons, or formatting output.
  It doesn’t affect non-alphabetic characters or numbers in the string.
  LOWER is commonly used in data cleaning, search operations, and ensuring consistent data representation across different systems.

 */
SELECT a.name, LOWER(a.NAME) as upper_name FROM AUTHORS a;
