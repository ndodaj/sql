-- SUM
    /**
      SUM is an aggregate function in SQL used to calculate the total of a set of values.
      It’s commonly used with numeric columns in combination with GROUP BY clauses to compute totals
      for different categories or groups within the data.

      SUM is essential for financial calculations, statistical analysis, and generating summary reports from database tables.
      It ignores NULL values and can be used in conjunction with other aggregate functions for complex data analysis.
     */

SELECT SUM(b.PRICE) FROM PUBLIC.BOOKS b;



-- AVG
    /**
      The AVG() function in SQL is an aggregate function that calculates the average value of a numeric column.
      It returns the sum of all the values in the column, divided by the count of those values.
     */

SELECT AVG(b.PRICE) as cmimi_mesatar FROM PUBLIC.BOOKS b;



-- MIN
    /**
      MIN is an aggregate function in SQL that returns the lowest value in a set of values.
      It works with numeric, date, or string data types, selecting the minimum value from a specified column.
      Often used in conjunction with GROUP BY, MIN can find the smallest value within each group.
      This function is useful for various data analysis tasks, such as identifying the lowest price,
      earliest date, or alphabetically first name in a dataset.
     */
SELECT MIN(b.PRICE) as cmimi_minimal FROM PUBLIC.BOOKS b;



-- MAX
    /**
      MAX is an aggregate function in SQL that returns the highest value in a set of values.
      It can be used with numeric, date, or string data types, selecting the maximum value from a specified column.
      MAX is often used in combination with GROUP BY to find the highest value within each group.
      This function is useful for various data analysis tasks, such as finding the highest salary,
      the most recent date, or the alphabetically last name in a dataset.
     */
SELECT MAX(b.PRICE) as cmimi_maximal FROM PUBLIC.BOOKS b;


