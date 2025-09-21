# SQL Learning Repository

This repository is a practical collection of SQL examples, queries, and schema snippets intended as a learning notebook or quick reference. It groups examples by common SQL topics like DDL, DML, DQL, functions, and operators.

Use these files to learn, test, or adapt queries for small practice databases (e.g., MySQL, MariaDB, PostgreSQL, Oracle). Syntax notes are included where relevant. Many files are short notes with example statements rather than ready-to-run projects.

## Repository Layout

-   `basic/`: Core SQL concepts and examples.
    -   `data_types.sql`: Describes common SQL data types with `CREATE TABLE` snippets.
    -   `constraints.sql`: Examples for `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, and `DEFAULT`.
-   `ddl/`: Data Definition Language examples.
    -   `ddl.query.sql`: Notes on `CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`.
    -   `sqlplusTable.sql`: A larger example dataset (employee, department) with `INSERT` statements, suitable for practicing queries.
-   `dml/`: Data Manipulation Language examples.
    -   `dml.query.sql`: `INSERT`, `UPDATE`, `DELETE` examples.
-   `dql/`: Data Query Language examples.
    -   `dql.query.sql`: Notes on `SELECT` with `WHERE`, `COUNT`, etc.
    -   `alias.sql`: Examples of column aliases.
    -   `distinct.sql`: A short note on `DISTINCT` usage.
-   `function/`: SQL function examples.
    -   `single_row_function.sql`: General examples of single-row functions.
    -   `single row function/character_single_row.sql`: Examples of character-based functions like `UPPER()`, `LOWER()`, `SUBSTR()`.
-   `operators/`: SQL operator examples.
    -   `query.sql`: Examples of operators like `IN`, `LIKE`, `BETWEEN`, `IS NULL`, etc.
    -   `assignment.sql`: Practice assignments using various operators.
-   `aggregation/`: SQL aggregation function examples.
    -   Contains examples of aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, and `GROUP BY` clauses.
-   `indexes/`: Database index examples.
    -   Contains examples of creating and managing database indexes for performance optimization.
-   `joins/`: SQL join operation examples.
    -   Contains examples of different types of joins (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL OUTER JOIN`, etc.).
-   `sql queries/`: Miscellaneous practice queries.
    -   `assignment_01.sql`, `query_1.sql`, `query_2.sql`: Collections of practice queries using `WHERE` clauses, calculated columns, and filtering.
-   `table/`: Simple table query examples.
    -   `college.sql`: `SELECT * FROM college;`
    -   `student.sql`: `SELECT * FROM student;`
-   `transactions/`: Database transaction examples.
    -   Contains examples of transaction management including `BEGIN`, `COMMIT`, `ROLLBACK`, and `SAVEPOINT`.

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
