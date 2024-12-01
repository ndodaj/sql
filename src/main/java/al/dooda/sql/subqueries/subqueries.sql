/**
    In SQL, a subquery is a query that is nested inside a main query.
    If a subquery is nested inside another subquery, it is called a nested subquery.
    They can be used in SELECT, INSERT, UPDATE, or DELETE statements or inside another subquery.

    Nested subqueries can get complicated quickly, but they are essential for performing complex database tasks.

    Subquery: A query enclosed within another SQL statement, referred to as the outer or main query.

    Nested Subquery: A subquery and its related outer query that further contains other subqueries within it,
    resulting in multiple levels of subqueries.

    SELECT o.order_id, o.customer_idFROM orders o
        WHERE (SELECT SUM(oi.price * oi.quantity) FROM order_items oi WHERE oi.order_id = o.order_id) > 1000;
 */



