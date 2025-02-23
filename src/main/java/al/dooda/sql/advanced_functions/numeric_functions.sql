-- NUMERIC FUNCTIONS

/** FLOOR
  The SQL FLOOR function is used to round down any specific decimal or numeric value to its nearest whole integer.
  The returned number will be less than or equal to the number given as an argument.
  One important aspect to note is that the FLOOR function’s argument must be a number and it always returns an integer.

 */

SELECT FLOOR(25.75) AS FloorValue; --> 25

/** ABS
  The ABS() function in SQL returns the absolute value of a given numeric expression,
  meaning it converts any negative number to its positive equivalent while leaving positive numbers unchanged.
  This function is useful when you need to ensure that the result of a calculation or a value stored in a
  database column is non-negative, such as when calculating distances, differences,
  or other metrics where only positive values make sense.
  For example, SELECT ABS(-5) would return 5.

 */


/** MOD
  The MOD function in SQL calculates the remainder when one number is divided by another.
  It takes two arguments: the dividend and the divisor. MOD returns the remainder of the division operation,
  which is useful for various mathematical operations, including checking for odd/even numbers,
  implementing cyclic behaviors, or distributing data evenly.
  The syntax and exact behavior may vary slightly between different database systems,
  with some using the % operator instead of the MOD keyword

 */
SELECT MOD(18, 4); --> 2


/** ROUND
  The ROUND function in SQL is used to round a numeric value to a specified number of decimal places.
  It takes two arguments: the number to be rounded and the number of decimal places to round to.
  If the second argument is omitted, the function rounds the number to the nearest whole number.
  For positive values of the second argument, the number is rounded to the specified decimal places;
  for negative values, it rounds to the nearest ten, hundred, thousand, etc.
  The ROUND function is useful for formatting numerical data for reporting or ensuring consistent precision in calculations.
 */
SELECT ROUND(235.415, 2) AS RoundValue; --> 235.420

/** CEILING
  The CEILING() function in SQL returns the smallest integer greater than or equal to a given numeric value.
  It’s useful when you need to round up a number to the nearest whole number,
  regardless of whether the number is already an integer or a decimal.
  For example, CEILING(4.2) would return 5, and CEILING(-4.7) would return -4.
  This function is commonly used in scenarios where rounding up is necessary,
  such as calculating the number of pages needed to display a certain number of items when each page has a fixed capacity.
 */