# SQL Learning Repository

This repository is a practical collection of SQL examples, queries, and schema snippets intended as a learning notebook or quick reference. It groups examples by common SQL topics like DDL, DML, DQL, functions, and operators.

Use these files to learn, test, or adapt queries for small practice databases (e.g., MySQL, MariaDB, PostgreSQL, Oracle). Syntax notes are included where relevant. Many files are short notes with example statements rather than ready-to-run projects.

## Repository Structure

### Core SQL Concepts
- **`basic/`** - Fundamental SQL concepts and examples
  - `data_types.sql` - Common SQL data types with `CREATE TABLE` examples
  - `constraints.sql` - Constraint examples (`NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, `DEFAULT`)

### Database Structure (DDL)
- **`ddl/`** - Data Definition Language examples
  - `ddl.query.sql` - `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME` operations
  - `sqlplusTable.sql` - Sample dataset (employee, department) with `INSERT` statements for practice

### Data Operations
- **`dml/`** - Data Manipulation Language examples
  - `dml.query.sql` - `INSERT`, `UPDATE`, `DELETE` operations
- **`dql/`** - Data Query Language examples
  - `dql.query.sql` - `SELECT` statements with `WHERE`, `COUNT`, etc.
  - `alias.sql` - Column alias examples
  - `distinct.sql` - `DISTINCT` keyword usage

### Functions & Expressions
- **`function_single row/`** - SQL function examples
  - `single_row_function.sql` - General single-row function examples
  - **`number_single_row_fun/`**
    - `number_single_row.sql` - Numeric functions (`ROUND()`, `TRUNC()`, `MOD()`, etc.)
  - **`date single row function/`**
    - `date_single_row_fun.sql` - Date/time functions (`SYSDATE`, `CURRENT_DATE`, `EXTRACT()`, etc.)
  - **`general single row function/`**
    - `general.sql` - General single-row functions
  - **`single row function/`** - Character and string functions
    - `character_single_row.sql` - String functions (`UPPER()`, `LOWER()`, `SUBSTR()`, `LENGTH()`, etc.)
    - `csrf.assignment.sql` - Practice assignments for character/string functions

### Query Features
- **`operators/`** - SQL operator examples
  - `query.sql` - Comparison and logical operators (`IN`, `LIKE`, `BETWEEN`, `IS NULL`, etc.)
  - `assignment.sql` - Practice assignments using various operators
- **`aggregation/`** - Aggregate functions and grouping
  - `aggregate_fun.sql` - Aggregate function examples (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)
  - `assignment.sql` - Practice assignments for aggregate functions
  - `group_by.sql` - `GROUP BY` clause examples
  - `having.sql` - `HAVING` clause examples
  - `order_by.sql` - `ORDER BY` clause examples
- **`joins/`** - Join operations
  - Examples of `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`, etc.
- **`indexes/`** - Database indexing
  - Creating and managing indexes for performance optimization

### Advanced Features
- **`transactions/`** - Transaction management
  - `BEGIN`, `COMMIT`, `ROLLBACK`, and `SAVEPOINT` examples

### Practice & Examples
- **`sql queries/`** - Practice query collections
  - `assignment_01.sql`, `query_1.sql`, `query_2.sql` - Various practice queries with `WHERE` clauses, calculated columns, and filtering
- **`table/`** - Simple table examples
  - `college.sql` - Basic college table queries
  - `student.sql` - Basic student table queries

## How to Use

1.  **Choose a Database**: Pick a target RDBMS (MySQL, PostgreSQL, Oracle, etc.). Note that some syntax (e.g., `AUTO_INCREMENT`) may vary.
2.  **Load Schema**: Load the sample schema from `ddl/sqlplusTable.sql` into a test database. This will allow you to run the examples in `sql queries/`.
3.  **Explore**: Open files in `basic/`, `dml/`, `dql/`, etc., to learn common patterns and try the snippets interactively.

### Quick Start (MySQL Example)

1.  Create a test database:
    ```bash
    mysql -u root -p -e "CREATE DATABASE sql_notebook; USE sql_notebook;"
    ```
2.  Load the sample tables:
    ```bash
    mysql -u root -p sql_notebook < ddl/sqlplusTable.sql
    ```
3.  Run practice queries from the `sql queries/` directory or experiment with the `dql/` examples.

## Contributing

Contributions and improvements are welcome! Feel free to open an issue or submit a pull request. Some ideas for contribution include:
- Adding examples for other SQL concepts (e.g., Joins, Aggregation, Window Functions).
- Providing versions of scripts for different database systems (e.g., PostgreSQL, SQLite).
- Adding more complex query challenges.

---

Repository maintained as a personal SQL learning notebook.
