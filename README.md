## SQL Learning Repository

This repository is a practical collection of SQL examples, queries, and schema snippets intended as a learning notebook or quick reference. Content is grouped by topics like DDL, DML, DQL, functions, and operators.

Use these files to learn, test, or adapt queries for small practice databases (e.g., MySQL, MariaDB, PostgreSQL, Oracle). Syntax notes are included where relevant. Many files are short notes with example statements rather than ready-to-run projects.

## Repository structure

### Core SQL concepts
- `basics/`
  - `data_types.sql` — Common SQL data types with `CREATE TABLE` examples
  - `constraints.sql` — Constraint examples (`NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `DEFAULT`)

### Database structure (DDL)
- `ddl/`
  - `ddl_commands.sql` — `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` operations
  - `sqlplus_table.sql` — Sample dataset (employee, department) with `INSERT` statements for practice

### Data operations
- `dml/`
  - `dml_commands.sql` — `INSERT`, `UPDATE`, `DELETE` operations
- `dql/`
  - `dql_commands.sql` — `SELECT` statements with `WHERE`, `COUNT`, etc.
  - `select_alias.sql` — Column alias examples
  - `select_distinct.sql` — `DISTINCT` keyword usage

### Functions and expressions
- `functions/single_row/`
  - `single_row_function_overview.sql` — General single-row function notes
  - `number_functions.sql` — Numeric functions (`ROUND()`, `TRUNC()`, `MOD()`, etc.)
  - `date_functions.sql` — Date/time functions (`SYSDATE`, `CURRENT_DATE`, `EXTRACT()`, etc.)
  - `general_functions.sql` — Miscellaneous single-row functions
  - `character_functions.sql` — String functions (`UPPER()`, `LOWER()`, `SUBSTR()`, `LENGTH()`, etc.)
  - `csrf_assignment.sql` — Practice assignments for character/string functions
- `functions/aggregate/`
  - `aggregate_functions.sql` — Aggregate function examples (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
  - `assignment.sql` — Practice assignments for aggregate functions
  - `group_by.sql` — `GROUP BY` clause examples
  - `having.sql` — `HAVING` clause examples
  - `order_by.sql` — `ORDER BY` clause examples

### Query features
- `operators/`
  - `operators_examples.sql` — Comparison and logical operators (`IN`, `LIKE`, `BETWEEN`, `IS NULL`, etc.)
  - `operators_assignment.sql` — Operator-focused practice assignments
- `joins/`
  - `join_examples.sql` — Various JOIN examples (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`)
  - `join_practice.sql` — Practice problems for JOIN operations
- `indexes/`
  - `index_examples.sql` — Index creation examples (`CREATE INDEX`, `UNIQUE INDEX`, etc.)
  - `index_practice.sql` — Practice problems for index management

### Advanced features
- `transactions/` — Transaction management: `BEGIN`, `COMMIT`, `ROLLBACK`, `SAVEPOINT`
- `subqueries/` — Nested query examples and practice
  - `subquery.sql` — Basic subquery concepts and examples
  - `assignment.sql` — Practice assignments for subqueries
  - `query/` — Additional subquery examples
    - `subquery_01.sql`, `subquery_02.sql` — Progressive subquery practice

### Practice and examples
- `queries/` — Practice query collections
  - `assignment_01.sql`, `query_01.sql`, `query_02.sql` — Various practice queries with `WHERE` clauses, calculated columns, and filtering
- `tables/` — Simple table examples
  - `college.sql` — Basic college table schema/queries
  - `student.sql` — Basic student table schema/queries

## How to use

1. **Choose a database**: Pick a target RDBMS (MySQL, PostgreSQL, Oracle, etc.). Some syntax (e.g., `AUTO_INCREMENT`) varies by engine.
2. **Load sample schema**: Load the sample schema from `ddl/sqlplus_table.sql` into a test database. This enables the examples in `queries/` and `dql/`.
3. **Explore**: Open files in `basics/`, `dml/`, `dql/`, `functions/`, etc., to learn common patterns and try the snippets interactively.

### Quick start (MySQL example)

1. Create a test database:
```bash
mysql -u root -p -e "CREATE DATABASE sql_notebook; USE sql_notebook;"
```
2. Load the sample tables:
```bash
mysql -u root -p sql_notebook < ddl/sqlplus_table.sql
```
3. Run practice queries from the `queries/` directory or experiment with the `dql/` examples.

## Contributing

Contributions are welcome! Ideas:
- Add examples for joins, indexes, transactions, and window functions
- Provide variants for PostgreSQL/SQLite/Oracle where syntax differs
- Add more complex query challenges

---

Repository maintained as a personal SQL learning notebook.
