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
- `table/` : Simple table query examples
	- `college.sql` — `SELECT * FROM college;` example.
	- `student.sql` — `SELECT * FROM students;` example.
- `SQL Query/` : Miscellaneous practice queries
	- `assignment_01.sql` — Practice queries using `WHERE` with `AND`/`OR` conditions.
	- `query_1.sql` — Examples of calculated columns, aliases, and basic arithmetic operations on salaries.
	- `query_2.sql` — A set of practice queries against the `EMP` table using the `WHERE` clause for filtering.
- `aggregation/`, `indexes/`, `joins/`, `transactions/` : Folders for aggregation, index, join and transaction examples (currently empty or with examples to add).

**How to use this repo**
- Pick a target RDBMS (MySQL, PostgreSQL, Oracle). Some syntax (e.g., `AUTO_INCREMENT`, `CHECK` enforcement, or `SQL*Plus` conventions) may vary.
- Load the sample schema from `ddl/sqlplusTable.sql` (or adapt `ddl/ddl.query.sql`) into a test database to run the queries in `SQL Query/`.
- Open files in `basic/`, `dml/`, and `dql/` to learn common patterns and try the snippets interactively.

**Quick start (MySQL example)**
1. Create a test database:

	 ```pwsh
	 mysql -u root -p -e "CREATE DATABASE sql_notebook; USE sql_notebook;"
	 ```
2. Load the sample tables (example path):

	 ```pwsh
	 mysql -u root -p sql_notebook < "ddl/sqlplusTable.sql"
	 ```
3. Run practice queries from the `SQL Query/` directory or experiment with the `dql/` examples.

**Notes & Suggestions**
- Many files are explanatory notes rather than production-ready migration scripts — review and adapt before running on real data.
- Consider adding README sections for `joins/` and `indexes/` when you populate those folders.
- If you want, I can: add runnable migration scripts per database (MySQL/Postgres/SQLite), normalize naming across files, or create a single runnable demo that sets up the sample DB and runs example queries. Tell me which RDBMS you prefer.

---

Repository maintained as a personal SQL learning notebook. Contributions and improvements are welcome.
