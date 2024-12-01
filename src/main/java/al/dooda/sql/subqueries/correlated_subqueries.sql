/**

  In SQL, a correlated subquery is a subquery that uses values from the outer query in it's WHERE clause.
  The correlated subquery is evaluated once for each row processed by the outer query.
  It exists because it depends on the outer query and it cannot execute independently of the outer query
  because the subquery is correlated with the outer query as it uses its column in it's WHERE clause.


  A correlated subquery is a subquery that contains a reference to a table that also appears in the outer query.
  For example:

    SELECT * FROM t1
      WHERE column1 = ANY (SELECT column1 FROM t2
                           WHERE t2.column2 = t1.column2);


 */