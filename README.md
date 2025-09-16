# SQL Learning Repository

A collection of SQL scripts and examples for learning database concepts, queries, and operations using MySQL. The repository is organized by topics to facilitate step‑by‑step study of SQL fundamentals, including data types, constraints, table creation (DDL), and basic queries (DML).

## Project Structure

```
README.md
aggregation/
basic/
    constraints.sql
    data_types.sql
ddl/
    ddl.query.sql
    sqlplusTable.sql
dml/
    dml.query.sql
dql/
    alias.sql
    distinct.sql
    dql.query.sql
indexes/
joins/
SQL Query/
    query.sql
table/
    college.sql
    student.sql
transactions/
```

- **basic/** – Fundamental SQL elements such as data types and constraints.
  - `data_types.sql`: Demonstrates common data types (CHAR, VARCHAR, INT, DATE, etc.) with sample `CREATE TABLE` statements.
  - `constraints.sql`: Explains and implements constraints (NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT).

- **ddl/** – Data Definition Language statements.
  - `ddl.query.sql`: Creates `college` and `student` tables with various constraints and includes basic `SELECT` queries.
  - `sqlplusTable.sql`: Example of creating a table using SQL*Plus syntax (for Oracle compatibility).

- **dml/** – Data Manipulation Language operations.
  - `dml.query.sql`: Examples of `INSERT`, `UPDATE`, `DELETE`, and simple `SELECT` statements on the `student` table.

- **dql/** – Data Query Language operations focused on `SELECT`.
  - `alias.sql`: Using column aliases.
  - `distinct.sql`: Using `DISTINCT`.
  - `dql.query.sql`: Basic `SELECT` queries, filtering, aggregation, and column renaming.

- **indexes/** – Placeholder for index creation examples (currently empty).

- **joins/** – Placeholder for JOIN examples (currently empty).

- **SQL Query/** – Miscellaneous query examples.
  - `query.sql`: Sample query used in the learning exercises.

- **table/** – Sample table schemas and simple queries.
  - `college.sql`: `SELECT * FROM college;`
  - `student.sql`: `SELECT * FROM student;`

- **transactions/** – Placeholder for transaction control examples (currently empty).

## Usage

1. Open the project in VS Code or any text editor.
2. Use a SQL client such as MySQL Workbench, DBeaver, or the MySQL command‑line tool.
3. For each script:
   - Create a database (e.g., `CREATE DATABASE sql_learning;`).
   - Connect to the database.
   - Execute the SQL file (e.g., `SOURCE path/to/file.sql;` in MySQL CLI or copy‑paste in a GUI).

Example setup in MySQL CLI:

```sql
mysql -u root -p
CREATE DATABASE sql_learning;
USE sql_learning;
SOURCE basic/data_types.sql;
SOURCE ddl/ddl.query.sql;
```

## Prerequisites

- MySQL server (8.0+ recommended).
- Basic SQL knowledge is helpful but not required; the files include explanatory comments.

## Notes

- The repository is for educational purposes only.
- Back up your database before running DDL or DML scripts.
- Scripts assume a MySQL environment; minor adjustments may be needed for other DBMS (e.g., PostgreSQL, SQLite).
- Empty directories are placeholders for future expansions—contribute by adding examples.

## Contributing

Fork the repo and submit pull requests for new scripts, fixes, or additional topics. Focus on clear comments, executable examples, and MySQL compatibility.