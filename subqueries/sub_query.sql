/*
 * SUBQUERIES IN SQL
 * ==================
 *
 * Definition:
 * A subquery is a query nested inside another query (SELECT, INSERT, UPDATE, or DELETE).
 * Also known as an inner query or nested query.
 *
 * Execution Order:
 * - Inner query (subquery) executes first
 * - The result is passed to the outer query
 * - Outer query then executes using the subquery result
 *
 * When to Use Subqueries:
 * - When you need to fetch unknown data that depends on another query
 * - When retrieving data from multiple tables
 * - When filtering data based on aggregated values
 * - When the condition depends on data from another table
 *
 * Syntax:
 * SELECT column1, column2, ...
 * FROM table_name
 * WHERE column_name OPERATOR (SELECT column1 FROM table_name WHERE condition);
 *
 * Types of Subqueries:
 * - Single-row subquery: Returns one row
 * - Multi-row subquery: Returns multiple rows
 * - Multi-column subquery: Returns multiple columns
 * - Correlated subquery: References columns from the outer query
 * - Scalar subquery: Returns a single value
 */

 
