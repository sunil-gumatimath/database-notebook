# SQL Learning Repository

This repository is a practical collection of SQL examples, queries and schema snippets intended as a learning notebook or quick reference. It groups examples by common SQL topics: DDL (schema), DML (data manipulation), DQL (queries), basic SQL concepts, table samples, transactions and more.

Use these files as examples to learn, test, or adapt queries for small practice databases (MySQL, MariaDB, PostgreSQL, Oracle — syntax notes are included where relevant). Many files are short notes with example statements rather than ready-to-run projects.

**Repository Layout**
- `basic/` : Core SQL concepts and examples
	- `data_types.sql` — Describes common SQL data types with example `CREATE TABLE` snippets.
	- `constraints.sql` — Notes and examples for `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`, and `DEFAULT` with sample `college` and `student` tables.
- `ddl/` : Data Definition Language examples
	- `ddl.query.sql` — DDL examples and notes (`CREATE`, `ALTER`, `DROP`, `TRUNCATE`, `RENAME`) and sample `college`/`student` schema.
	- `sqlplusTable.sql` — Larger example dataset (employee/department/salary tables) with `INSERT` statements; suitable for practicing queries.
- `dml/` : Data Manipulation Language examples
	- `dml.query.sql` — `INSERT`, `UPDATE`, `DELETE` examples and brief usage notes.
- `dql/` : Data Query Language examples
	- `dql.query.sql` — Notes on `SELECT` and examples using `WHERE`, `COUNT`, renaming columns.
	- `alias.sql` — Simple examples showing column aliases.
	- `distinct.sql` — Short note demonstrating `DISTINCT` usage.
- `function/` : SQL function examples
	- `single_row_function.sql` — Examples of single row functions.
	- `single row function/` — Directory containing specific single row function examples
		- `character_single_row.sql` — Examples of character-based single row functions like `upper()`, `lower()`, `substr()`, etc.
- `indexes/` : Index examples (currently empty)
- `joins/` : SQL join examples (currently empty)
- `operators/` : SQL operators examples
	- `query.sql` — Examples demonstrating various SQL operators like IN, NOT IN, LIKE, NOT LIKE, BETWEEN, IS, CONCAT, etc., with explanations and queries.
	- `assignment.sql` — Practice assignments with SQL operators including pattern matching, date filtering, and complex WHERE conditions.
- `sql queries/` : Miscellaneous practice queries
	- `assignment_01.sql` — A collection of practice queries demonstrating filtering with the `WHERE` clause, including combined `AND`/`OR` conditions and exclusion operators (`!=`).
	- `query_1.sql` — Examples of calculated columns, aliases, and basic arithmetic operations on salaries.
	- `query_2.sql` — A set of practice queries against the `EMP` table using the `WHERE` clause for filtering.
- `table/` : Simple table query examples
	- `college.sql` — `SELECT * FROM college;` example.
	- `student.sql` — `SELECT * FROM student;` example.
- `transactions/` : Transaction examples (currently empty)

**How to use this repo**
- Pick a target RDBMS (MySQL, PostgreSQL, Oracle). Some syntax (e.g., `AUTO_INCREMENT`, `CHECK` enforcement, or `SQL*Plus` conventions) may vary.
- Load the sample schema from `ddl/sqlplusTable.sql` (or adapt `ddl/ddl.query.sql`) into a test database to run the queries in `sql queries/`.
- Open files in `basic/`, `dml/`, `dql/`, and `function/` to learn common patterns and try the snippets interactively.

**Quick start (MySQL example)**
1. Create a test database:

	 ```pwsh
	 mysql -u root -p -e "CREATE DATABASE sql_notebook; USE sql_notebook;"
	 ```
2. Load the sample tables (example path):

	 ```pwsh
	 mysql -u root -p sql_notebook < "ddl/sqlplusTable.sql"
	 ```
3. Run practice queries from the `sql queries/` directory or experiment with the `dql/` examples.

**Notes & Suggestions**
- Many files are explanatory notes rather than production-ready migration scripts — review and adapt before running on real data.
- Empty directories (`aggregation/`, `indexes/`, `joins/`, `transactions/`) may be populated with additional examples in the future.
- If you want, I can: add runnable migration scripts per database (MySQL/Postgres/SQLite), normalize naming across files, or create a single runnable demo that sets up the sample DB and runs example queries. Tell me which RDBMS you prefer.

---

Repository maintained as a personal SQL learning notebook. Contributions and improvements are welcome.
