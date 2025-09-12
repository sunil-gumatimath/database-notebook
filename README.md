# SQL Learning Repository

A collection of SQL scripts and examples for learning database concepts, queries, and operations using MySQL. Organized by topics for easy navigation and study.

## Project Structure

The repository is structured into directories covering key SQL areas:

- **basic/**: Fundamental SQL elements like data types and constraints.
  - [data_types.sql](basic/data_types.sql)
  - [constraints.sql](basic/constraints.sql)

- **aggregation/**: SQL aggregation functions (e.g., SUM, COUNT, AVG, MAX, MIN).

- **ddl/**: Data Definition Language statements (CREATE, ALTER, DROP DATABASE/TABLE).

- **dml/**: Data Manipulation Language operations (INSERT, UPDATE, DELETE, SELECT).

- **indexes/**: Creating, using, and managing indexes for query optimization.

- **joins/**: Different types of JOIN operations (INNER, LEFT, RIGHT, FULL).

- **table/**: Table creation and sample schemas.
  - [college.sql](table/college.sql)
  - [student.sql](table/student.sql)

- **transactions/**: Transaction control (BEGIN, COMMIT, ROLLBACK) and ACID properties.

Additional root files:
- [.gitignore](.gitignore): Ignores unnecessary files like local settings.

## Usage

1. Open the project in VS Code or any text editor.

2. Use a SQL client such as MySQL Workbench, phpMyAdmin, DBeaver, or the MySQL command-line tool.

3. For each script:
   - Create a new database (e.g., `CREATE DATABASE sql_learning;`).
   - Connect to the database.
   - Execute the SQL file (e.g., `SOURCE path/to/file.sql;` in MySQL CLI or copy-paste in a GUI).

4. Experiment with the queries and modify as needed for learning.

Example setup in MySQL CLI:
```
mysql -u root -p
USE sql_learning;
SOURCE basic/data_types.sql;
```

## Prerequisites

- MySQL server installed and running locally.
- Basic knowledge of SQL is helpful but not required.

## Notes

- This repository is for educational and local development purposes only.
- Always back up your database before running DDL or DML scripts.
- Scripts assume a MySQL environment; minor adjustments may be needed for other DBMS.
- Feel free to add more examples or contribute improvements!

## Contributing

If using Git, fork the repo and submit pull requests for new scripts or fixes.