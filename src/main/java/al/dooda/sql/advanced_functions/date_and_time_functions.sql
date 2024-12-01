/** DATE
  The DATE data type in SQL is used to store calendar dates (typically in the format YYYY-MM-DD).
  It represents a specific day without any time information. DATE columns are commonly used for storing birthdates,
  event dates, or any other data that requires only day-level precision.
  SQL provides various functions to manipulate and format DATE values, allowing for date arithmetic,
  extraction of date components, and comparison between dates.
  The exact range of valid dates may vary depending on the specific database management system being used.

  The most difficult part when working with dates is to be sure that the format of the date you are trying to insert,
  matches the format of the date column in the database.

  MySQL comes with the following data types for storing a date or a date/time value in the database:
    DATE - format YYYY-MM-DD
    DATETIME - format: YYYY-MM-DD HH:MI:SS
    TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
    YEAR - format YYYY or YY
 */

 /** TIME
   The TIME data type in SQL is used to store time values, typically in the format of hours, minutes, and seconds.
   It’s useful for recording specific times of day without date information.
   SQL provides various functions for manipulating and comparing TIME values, allowing for time-based calculations and queries.
   The exact range and precision of TIME can vary between different database management systems.
  */

/** TIMESTAMP
  SQL TIMESTAMP is a data type that allows you to store both date and time.
  It is typically used to track updates and changes made to a record, providing a chronological time of happenings.

  Depending on the SQL platform, the format and storage size can slightly vary.
  For instance, MySQL uses the ‘YYYY-MM-DD HH:MI:SS’ format and in PostgreSQL,
  it’s stored as a ‘YYYY-MM-DD HH:MI:SS’ format but it additionally can store microseconds.

  TIMESTAMP(expression, time)

 */

/** DATEPART
  DATEPART is a useful function in SQL that allows you to extract a specific part of a date or time field.
  You can use it to get the year, quarter, month, day of the year, day, week, weekday, hour, minute,
  second, or millisecond from any date or time expression.

  SELECT DATEPART(year, '2017/08/25') AS DatePartInt;

 */

/** DATEADD
  DATEADD is an SQL function used to add or subtract a specified time interval to a date or datetime value.
  It typically takes three arguments: the interval type (e.g., day, month, year),
  the number of intervals to add or subtract, and the date to modify.
  This function is useful for date calculations, such as finding future or past dates, calculating durations, or generating date ranges.
  The exact syntax and name of this function may vary slightly between different database management systems
  (e.g., DATEADD in SQL Server, DATE_ADD in MySQL).

  SELECT CURRENT_TIMESTAMP, DATEADD(month, 1, CURRENT_TIMESTAMP) as dateadd --> adds 1 month to the current date

 */