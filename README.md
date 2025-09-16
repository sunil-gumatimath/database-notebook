# SQL Learning Repository

A collection of SQL scripts and examples for learning database concepts, queries, and operations using MySQL. This repository is organized by topics to facilitate step-by-step study of SQL fundamentals, including data types, constraints, table creation (DDL), and basic queries (DML). It uses sample schemas like 'college' and 'student' tables for practical illustrations.

## Project Structure

The repository is structured into directories covering key SQL areas. Each file contains commented examples and executable SQL statements.

- **basic/**: Fundamental SQL elements like data types and constraints.
  - [data_types.sql](basic/data_types.sql): Demonstrates common data types (e.g., CHAR, VARCHAR, INT, DATE, TIMESTAMP, DECIMAL, BOOLEAN, TEXT, FLOAT, TIME) with sample CREATE TABLE statements for an 'employee' table.
  - [constraints.sql](basic/constraints.sql): Explains and implements constraints (NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY, CHECK, DEFAULT) using CREATE TABLE for 'college' and 'student' tables.

- **aggregation/**: SQL aggregation functions (e.g., SUM, COUNT, AVG, MAX, MIN).  
  *Currently empty; add examples for grouping and aggregate queries here.*

- **ddl/**: Data Definition Language statements (CREATE, ALTER, DROP for databases/tables).
  - [ddl.query.sql](ddl/ddl.query.sql): Creates 'college' and 'student' tables with AUTO_INCREMENT PRIMARY KEY, NOT NULL, UNIQUE, CHECK, DEFAULT, and FOREIGN KEY constraints. Includes basic SELECT queries and a RENAME TABLE example.

- **dml/**: Data Manipulation Language operations (INSERT, UPDATE, DELETE, SELECT).
  - [dml.query.sql](dml/dml.query.sql): Examples of INSERT, UPDATE, DELETE, and basic SELECT statements using the 'student' table to demonstrate data manipulation operations.

- **dql/**: Data Query Language operations, focused on SELECT statements for retrieving and querying data.
  - [dql.query.sql](dql/dql.query.sql): Basic SELECT queries including retrieving all columns, specific columns, filtering with WHERE, aggregate COUNT with conditions, and an ALTER TABLE RENAME COLUMN example on the 'students' table.

- **indexes/**: Creating, using, and managing indexes for query optimization.
  *Currently empty; add CREATE INDEX examples here.*

- **joins/**: Different types of JOIN operations (INNER, LEFT, RIGHT, FULL).  
  *Currently empty; add JOIN queries on sample tables here.*

- **table/**: Sample table schemas and basic queries.
  - [college.sql](table/college.sql): Simple SELECT * FROM college; to view table contents.
  - [student.sql](table/student.sql): Simple SELECT * FROM student; to view table contents.

- **transactions/**: Transaction control (BEGIN, COMMIT, ROLLBACK) and ACID properties.  
  *Currently empty; add transaction examples here.*

Additional root files:
- [.gitignore](.gitignore): Ignores unnecessary files like local settings.

## Usage

1. Open the project in VS Code or any text editor.

2. Use a SQL client such as MySQL Workbench, phpMyAdmin, DBeaver, or the MySQL command-line tool.

3. For each script:
   - Create a new database (e.g., `CREATE DATABASE sql_learning;`).
   - Connect to the database.
   - Execute the SQL file (e.g., `SOURCE path/to/file.sql;` in MySQL CLI or copy-paste in a GUI).

4. Experiment with the queries and modify as needed for learning. Start with basic/data_types.sql and constraints.sql, then proceed to DDL in ddl/, and add data for DML practice.

Example setup in MySQL CLI:
```
mysql -u root -p
CREATE DATABASE sql_learning;
USE sql_learning;
SOURCE basic/data_types.sql;
SOURCE ddl/ddl.query.sql;
```

## Prerequisites

- MySQL server installed and running locally (version 8.0+ recommended for full feature support).
- Basic knowledge of SQL is helpful but not required; the files include explanatory comments.

## Notes

- This repository is for educational and local development purposes only.
- Always back up your database before running DDL or DML scripts.
- Scripts assume a MySQL environment; minor adjustments may be needed for other DBMS (e.g., PostgreSQL or SQLite).
- Sample tables use 'college' and 'student' schemas to demonstrate relationships.
- Empty directories serve as placeholders for future expansions—contribute by adding examples!
- To populate tables for queries, add INSERT statements (e.g., in dml/ directory).

## Contributing

If using Git, fork the repo and submit pull requests for new scripts, fixes, or additional topics. Focus on clear comments, executable examples, and MySQL compatibility.