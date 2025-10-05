# SQL Learning Repository

A comprehensive SQL learning resource with hands-on examples, practice queries, and schema definitions for mastering database operations.

**Quick links:** See the full project index at [`INDEX.md`](INDEX.md).

### Table of Contents
- [About](#about)
- [Repository structure](#repository-structure)
  - [Core SQL concepts](#core-sql-concepts)
  - [Database structure (DDL)](#database-structure-ddl)
  - [Data operations](#data-operations)
  - [Functions and expressions](#functions-and-expressions)
  - [Query features](#query-features)
  - [Advanced features](#advanced-features)
  - [Practice and examples](#practice-and-examples)
- [Sample schemas](#sample-schemas)
- [How to use](#how-to-use)
- [Contributing](#contributing)
- [Conventions](#conventions)

## About

This repository is a practical collection of SQL examples, queries, and schema snippets intended as a learning notebook or quick reference. Content is organized by SQL concepts (DDL, DML, DQL) and features (functions, operators, subqueries, etc.).

**What you'll find:**
- **30+ SQL files** with examples and practice queries covering all major SQL topics
- **Two complete sample schemas** (SCOTT and HR) with realistic data
  - SCOTT: 14 employees, 4 departments (classic Oracle training schema)
  - HR: 107 employees, 27 departments, 23 locations, 25 countries (enterprise-level)
- **Progressive learning path** from basics to advanced topics
- **Real-world query patterns** and problem-solving approaches
- **Hands-on assignments** for skill reinforcement with detailed solutions
- **Function libraries** covering character, numeric, date, and aggregate functions

**Database compatibility:** Examples primarily use MySQL/MariaDB syntax with notes for Oracle and PostgreSQL where syntax differs.

## Repository structure

### Core SQL concepts
- **`basics/`** — Foundation concepts for database design
  - [`data_types.sql`](basics/data_types.sql) — Comprehensive data types guide with CREATE TABLE examples
    - Character types: CHAR (fixed-length), VARCHAR (variable-length, up to 2000 bytes)
    - Numeric types: INT, DECIMAL, FLOAT
    - Date/Time types: DATE (7 bytes), TIMESTAMP, TIME
    - Other types: BOOLEAN/BOOL, TEXT (large text data)
  - [`constraints.sql`](basics/constraints.sql) — Essential constraints with practical examples
    - NOT NULL: Ensures columns always have values
    - UNIQUE: Prevents duplicate values (email, username)
    - PRIMARY KEY: Uniquely identifies records
    - FOREIGN KEY: Maintains relationships between tables
    - CHECK: Validates input values (e.g., salary > 0)
    - DEFAULT: Auto-assigns values when none provided

### Database structure (DDL)
- **`ddl/`** — Data Definition Language for schema management
  - [`ddl_commands.sql`](ddl/ddl_commands.sql) — Core DDL operations with examples
    - CREATE: Create new database objects (tables, indexes)
    - ALTER: Modify existing objects (add/drop columns)
    - DROP: Delete objects permanently
    - TRUNCATE: Remove all rows but keep structure
    - RENAME: Change object names
    - Note: DDL is auto-committed (cannot be rolled back)
  - [`scott_table.sql`](ddl/scott_table.sql) — Classic SCOTT schema (Oracle training schema)
    - **EMP** (14 employees): empno, ename, job, mgr, hiredate, sal, comm, deptno
    - **DEPT** (4 departments): deptno, dname, loc
    - **SALGRADE** (5 grades): grade, losal, hisal
    - **BONUS** (4 records): ename, job, sal, comm
  - [`hr_schema.sql`](ddl/hr_schema.sql) — Enterprise HR schema (complete organizational hierarchy)
    - **REGIONS** (4 regions): region_id, region_name
    - **COUNTRIES** (25 countries): country_id, country_name, region_id
    - **LOCATIONS** (23 locations): location_id, street_address, city, state_province, country_id
    - **DEPARTMENTS** (27 departments): department_id, department_name, manager_id, location_id
    - **JOBS** (19 job titles): job_id, job_title, min_salary, max_salary
    - **EMPLOYEES** (107 employees): employee_id, first_name, last_name, email, phone, hire_date, job_id, salary, commission_pct, manager_id, department_id
    - **JOB_HISTORY** (10 records): employee_id, start_date, end_date, job_id, department_id

### Data operations
- **`dml/`** — Data Manipulation Language for modifying data
  - [`dml_commands.sql`](dml/dml_commands.sql) — Row-level data operations
    - INSERT: Add new records to tables
    - UPDATE: Modify existing records with SET clause
    - DELETE: Remove records based on conditions
    - Note: DML focuses on data, not structure
- **`dql/`** — Data Query Language for retrieving data
  - [`dql_commands.sql`](dql/dql_commands.sql) — SELECT statements and basic queries
    - SELECT with projections: Retrieve specific columns
    - WHERE clause: Filter rows based on conditions
    - COUNT(): Count records
    - UNIQUE constraints with ALTER TABLE
  - [`select_alias.sql`](dql/select_alias.sql) — Column and table aliasing
    - AS keyword: Give alternative names to columns
    - Improves readability of query results
  - [`select_distinct.sql`](dql/select_distinct.sql) — Remove duplicates
    - DISTINCT: Get unique values from result sets
    - Applies to all selected columns together

### Functions and expressions
- **`functions/single_row/`** — Single-row functions (one result per row)
  - **`examples/`**
    - [`character_functions.sql`](functions/single_row/examples/character_functions.sql) — String manipulation (40+ examples)
      - Case conversion: UPPER, LOWER, INITCAP alternative
      - Substring operations: SUBSTR, LEFT
      - Position finding: INSTR, LOCATE
      - Concatenation: CONCAT with multiple strings
      - Replacement: REPLACE, remove characters
      - Trimming: TRIM (BOTH/LEADING/TRAILING)
      - Length and counting: LENGTH, character counting
      - String reversal: REVERSE
    - [`number_functions.sql`](functions/single_row/examples/number_functions.sql) — Numeric operations
      - MOD: Remainder calculations
      - SQRT: Square root values
      - POWER: Exponential calculations
      - ABS: Absolute values
      - ROUND: Round to nearest value with precision
      - TRUNCATE: Truncate to decimal places
    - [`date_functions.sql`](functions/single_row/examples/date_functions.sql) — Date/time handling (20+ functions)
      - Current date/time: CURDATE, NOW, SYSDATE, CURRENT_TIMESTAMP
      - Date arithmetic: ADDDATE, DATE_ADD, DATEDIFF, TIMESTAMPDIFF
      - Date parts: DAYNAME, DAYOFWEEK, LAST_DAY
      - Formatting: DATE_FORMAT with custom formats
    - [`general_functions.sql`](functions/single_row/examples/general_functions.sql) — Conditional logic
      - NULL handling: IFNULL, COALESCE, NULLIF
      - Conditional: CASE statements, IF
  - **`assignments/`** — [`single_row_assignment.sql`](functions/single_row/assignments/single_row_assignment.sql)
    - Practice: Annual/quarterly salary calculations, bonus calculations, aliasing
  - **`notes/`** — [`single_row_function_overview.sql`](functions/single_row/notes/single_row_function_overview.sql)
    - Quick reference guide and syntax overview
- **`functions/aggregate/`** — Aggregate functions (one result per group)
  - **`examples/`**
    - [`aggregate_functions.sql`](functions/aggregate/examples/aggregate_functions.sql) — Core aggregate functions
      - MAX: Highest value
      - MIN: Lowest value
      - SUM: Total of values
      - AVG: Average value
      - COUNT: Count rows/non-null values
    - [`group_by.sql`](functions/aggregate/examples/group_by.sql) — Grouping data
      - Group by department, job, salary
      - Group by hire year using YEAR()
      - Execution order: FROM → WHERE → GROUP BY → SELECT
    - [`having.sql`](functions/aggregate/examples/having.sql) — Filter grouped results (12+ examples)
      - HAVING with COUNT, SUM, AVG, MIN, MAX
      - Filter groups with conditions
      - Execution order: FROM → WHERE → GROUP BY → HAVING → SELECT
    - [`order_by.sql`](functions/aggregate/examples/order_by.sql) — Sort results
      - ORDER BY ASC/DESC
  - **`assignments/`** — [`aggregate_assignment.sql`](functions/aggregate/assignments/aggregate_assignment.sql)
    - Practice: Aggregations with filtering, grouping exercises

### Query features
- **`operators/`** — SQL operators for filtering and pattern matching
  - **`examples/`** — [`operators_examples.sql`](operators/examples/operators_examples.sql) — Complex filtering patterns (10+ examples)
    - IN operator: Filter by multiple values
    - NOT IN: Exclude values
    - LIKE: Pattern matching with wildcards (%, _)
    - REGEXP: Regular expression matching for vowels/consonants
    - BETWEEN: Range filtering
    - Date filtering: MONTHNAME, YEAR functions
    - Combined conditions: Multiple ANDs and ORs
    - NULL checking: IS NULL
  - **`assignments/`** — [`operators_assignment.sql`](operators/assignments/operators_assignment.sql)
    - Practice: Complex multi-condition queries
- **`joins/`** — JOIN operations for combining tables
  - Status: Placeholder for future content (INNER, LEFT, RIGHT, FULL OUTER, CROSS, SELF joins)
- **`indexes/`** — Index strategies for performance optimization
  - Status: Placeholder for future content (CREATE INDEX, composite indexes, explain plans)

### Advanced features
- **`subqueries/`** — Nested queries for complex data retrieval
  - **`examples/`** — [`subquery.sql`](subqueries/examples/subquery.sql) — Subquery fundamentals
    - Definition: Query nested inside another query (inner query)
    - Execution order: Inner query executes first, result passed to outer query
    - Types: Single-row, multi-row, multi-column, correlated, scalar subqueries
    - Use cases: Unknown data, multiple tables, filtered aggregations
  - **`assignments/`**
    - [`assignment_0.sql`](subqueries/assignments/assignment_0.sql) — HR schema subqueries (10+ nested queries)
      - Find department names for employees
      - Multi-level nesting: employee → department → location → country → region
      - Filter by cities, countries, regions
      - Query job titles and salary ranges
    - [`assignment_1.sql`](subqueries/assignments/assignment_1.sql) — Additional HR subqueries
      - City queries for countries (Australia, USA)
      - Department queries for cities
    - [`subquery_assignment.sql`](subqueries/assignments/subquery_assignment.sql) — SCOTT schema exercises
    - [`subquery_assignment_0.sql`](subqueries/assignments/subquery_assignment_0.sql) — More practice queries
  - **`query/`** — Progressive subquery examples
    - [`subquery_01.sql`](subqueries/query/subquery_01.sql) — Basic single-row subqueries
    - [`subquery_02.sql`](subqueries/query/subquery_02.sql) — Advanced with IN, ANY, ALL operators
- **`transactions/`** — Transaction management and ACID properties
  - Status: Placeholder for future content (BEGIN, COMMIT, ROLLBACK, savepoints, isolation levels)

### Practice and examples
- **`queries/`** — Comprehensive practice query collections
  - **`examples/`**
    - [`query_01.sql`](queries/examples/query_01.sql) — Basic SELECT queries
      - Simple WHERE conditions
      - Filtering by single values
      - OR conditions for multiple criteria
    - [`query_02.sql`](queries/examples/query_02.sql) — Advanced filtering (10+ complex queries)
      - Date filtering: MONTHNAME, YEAR functions
      - Pattern matching: LIKE with wildcards, REGEXP
      - Complex conditions: Multiple ANDs, ORs, NOT IN
      - BETWEEN for range queries
      - Vowel/consonant filtering with regular expressions
  - **`assignments/`** — [`query_assignment_01.sql`](queries/assignments/query_assignment_01.sql)
    - Calculated columns: Annual/quarterly/half-term salary
    - Bonus calculations: Salary + 1000, 10% increment
    - Column aliasing: AS keyword
    - Combined queries with multiple columns
- **`tables/`** — Table reference documentation
  - Note: Schema definitions located in `ddl/` folder (scott_table.sql, hr_schema.sql)

## Sample schemas

This repository includes two complete database schemas with sample data for practice:

### SCOTT Schema ([`ddl/scott_table.sql`](ddl/scott_table.sql))
Classic Oracle training schema - perfect for learning SQL fundamentals

**Tables:**
- **EMP** (14 employees)
  - Columns: EMPNO (PK), ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO (FK)
  - Jobs: CLERK, SALESMAN, MANAGER, ANALYST, PRESIDENT
  - Sample data: SMITH, ALLEN, WARD, JONES, MARTIN, BLAKE, CLARK, SCOTT, KING, TURNER, ADAMS, JAMES, FORD, MILLER
- **DEPT** (4 departments)
  - Columns: DEPTNO (PK), DNAME, LOC
  - Departments: ACCOUNTING (New York), RESEARCH (Dallas), SALES (Chicago), OPERATIONS (Boston)
- **SALGRADE** (5 grades)
  - Columns: GRADE, LOSAL, HISAL
  - Salary ranges: 700-1200, 1201-1400, 1401-2000, 2001-3000, 3001-9999
- **BONUS** (4 records)
  - Columns: ENAME, JOB, SAL, COMM
  - Tracks bonus information for salesmen

**Use for:** Basic SQL practice, simple joins, subqueries, aggregations, GROUP BY, HAVING

### HR Schema ([`ddl/hr_schema.sql`](ddl/hr_schema.sql))
Enterprise-level HR database with complete organizational hierarchy

**Tables:**
- **REGIONS** (4 regions)
  - Columns: region_id (PK), region_name
  - Regions: Europe, Americas, Asia, Middle East and Africa
- **COUNTRIES** (25 countries)
  - Columns: country_id (PK), country_name, region_id (FK)
  - Countries: US, UK, Canada, Germany, India, Australia, Brazil, etc.
- **LOCATIONS** (23 locations)
  - Columns: location_id (PK), street_address, postal_code, city, state_province, country_id (FK)
  - Cities: Seattle, Toronto, London, Munich, Tokyo, Sydney, etc.
- **DEPARTMENTS** (27 departments)
  - Columns: department_id (PK), department_name, manager_id, location_id (FK)
  - Examples: Administration, Marketing, Purchasing, Human Resources, Shipping, IT, Sales, Finance
- **JOBS** (19 job titles)
  - Columns: job_id (PK), job_title, min_salary, max_salary
  - Examples: President, Manager, Programmer, Clerk, Representative
- **EMPLOYEES** (107 employees)
  - Columns: employee_id (PK), first_name, last_name, email, phone_number, hire_date, job_id (FK), salary, commission_pct, manager_id (FK), department_id (FK)
  - Complete employee hierarchy with managers
- **JOB_HISTORY** (10 records)
  - Columns: employee_id (PK/FK), start_date (PK), end_date, job_id (FK), department_id (FK)
  - Tracks employee job change history

**Use for:** Complex queries, nested subqueries (4-5 levels deep), multi-table joins, hierarchical data, self-joins, advanced filtering

## How to use

### Getting started

1. **Choose your database system:** MySQL, MariaDB, PostgreSQL, Oracle (most examples use MySQL/MariaDB syntax)
2. **Load a sample schema:** Start with SCOTT (simpler) or HR (more complex) from `ddl/` directory
3. **Follow the learning path:** Progress from basics → DQL → functions → operators → subqueries
4. **Practice with assignments:** Each topic includes practice exercises to reinforce learning
5. **Use the index:** See [`INDEX.md`](INDEX.md) for quick navigation to all examples and assignments

### Quick start

**MySQL/MariaDB:**
```bash
# 1. Create a test database
mysql -u root -p -e "CREATE DATABASE sql_practice;"

# 2. Load the SCOTT schema (recommended for beginners)
mysql -u root -p sql_practice < ddl/scott_table.sql

# OR load the HR schema (for advanced practice)
mysql -u root -p sql_practice < ddl/hr_schema.sql

# 3. Connect and start practicing
mysql -u root -p sql_practice

# 4. Test your setup
mysql> SELECT * FROM emp;
mysql> SELECT * FROM dept;
```

**PostgreSQL:**
```bash
# 1. Create database and connect
psql -U postgres
CREATE DATABASE sql_practice;
\c sql_practice

# 2. Load schema (adjust DROP IF EXISTS syntax if needed)
\i ddl/scott_table.sql

# 3. Query the tables
SELECT * FROM emp;
```

### Suggested learning path

**Beginner track (4-6 weeks):**
1. **Foundation** → [`basics/`](basics/) (data types, constraints)
2. **Schema creation** → [`ddl/`](ddl/) (CREATE, ALTER, DROP) + Load SCOTT schema
3. **Querying basics** → [`dql/`](dql/) (SELECT, WHERE, DISTINCT, aliasing)
4. **Simple queries** → [`queries/examples/query_01.sql`](queries/examples/query_01.sql)
5. **Operators** → [`operators/`](operators/) (IN, LIKE, BETWEEN, pattern matching)
6. **Data manipulation** → [`dml/`](dml/) (INSERT, UPDATE, DELETE)
7. **Single-row functions** → [`functions/single_row/`](functions/single_row/) (string, number, date)
8. **Aggregate functions** → [`functions/aggregate/`](functions/aggregate/) (COUNT, SUM, GROUP BY, HAVING)
9. **Practice** → Complete all assignments in each folder

**Intermediate track (2-3 weeks):**
1. **Advanced filtering** → [`queries/examples/query_02.sql`](queries/examples/query_02.sql) + [`operators/examples/`](operators/examples/)
2. **Complex aggregations** → [`functions/aggregate/examples/having.sql`](functions/aggregate/examples/having.sql)
3. **Subqueries basics** → [`subqueries/examples/subquery.sql`](subqueries/examples/subquery.sql)
4. **Subquery practice** → [`subqueries/query/`](subqueries/query/) (progressive examples)
5. **Load HR schema** → [`ddl/hr_schema.sql`](ddl/hr_schema.sql)
6. **Multi-level subqueries** → [`subqueries/assignments/`](subqueries/assignments/)
7. **Complete all assignments** → Test knowledge with comprehensive exercises

**Advanced track (future content):**
1. **Joins** → INNER, LEFT, RIGHT, FULL OUTER, CROSS, SELF joins
2. **Window functions** → ROW_NUMBER, RANK, DENSE_RANK, LEAD, LAG
3. **Indexes and optimization** → CREATE INDEX, explain plans, performance tuning
4. **Transactions** → BEGIN, COMMIT, ROLLBACK, isolation levels
5. **Stored procedures and functions** → CREATE PROCEDURE, CREATE FUNCTION
6. **Triggers and views** → CREATE TRIGGER, CREATE VIEW

## Contributing

Contributions are welcome! Here are some ways to improve this repository:

**Content additions:**
- JOIN examples (INNER, LEFT, RIGHT, FULL OUTER, CROSS, SELF)
- Index creation and optimization strategies
- Transaction management (BEGIN, COMMIT, ROLLBACK, savepoints)
- Window functions (ROW_NUMBER, RANK, DENSE_RANK, LEAD, LAG)
- Views and materialized views
- Stored procedures and functions
- Triggers and events

**Improvements:**
- Add PostgreSQL/SQLite/Oracle syntax alternatives
- More complex query challenges and real-world scenarios
- Performance optimization examples
- Query execution plan analysis

**How to contribute:**
1. Fork the repository
2. Create a new branch for your feature
3. Add examples following the existing structure (examples/, assignments/, notes/)
4. Update the relevant README.md files
5. Add entries to INDEX.md for easy navigation
6. Submit a pull request

---

**Note:** This repository is maintained as a personal SQL learning notebook but welcomes community contributions.

## Conventions

### File organization
- **`examples/`** — Runnable code examples with detailed comments and explanations
- **`assignments/`** — Practice exercises and problem sets for skill reinforcement
- **`notes/`** — Quick reference guides, syntax overviews, and concept summaries
- **`README.md`** — Topic overview with learning objectives and file descriptions

### Naming conventions
- **File names:** lowercase with underscores (e.g., `character_functions.sql`, `group_by.sql`)
- **Descriptive names:** Names should clearly indicate content (e.g., `subquery_01.sql` rather than `example1.sql`)
- **Table names:** Uppercase for schema tables (e.g., `EMP`, `DEPT`, `EMPLOYEES`)
- **Column names:** Lowercase or uppercase depending on schema convention

### SQL style
- **Keywords:** Uppercase for SQL keywords (SELECT, FROM, WHERE, GROUP BY)
- **Comments:** Use `--` for single-line comments, `/* */` for multi-line explanations
- **Indentation:** Consistent indentation for readability in complex queries
- **Semicolons:** End statements with `;` for compatibility

### Database compatibility
- **Primary dialect:** MySQL/MariaDB syntax
- **Oracle notes:** Included where syntax differs (e.g., `DUAL` table, `NVL` vs `IFNULL`)
- **PostgreSQL notes:** Mentioned for significant differences
- **Verification:** Always test queries in your specific RDBMS

### Adding new content
1. Place files in the appropriate subdirectory (`examples/`, `assignments/`, or `notes/`)
2. Update the topic's `README.md` with file description and learning objectives
3. Add entry to root `INDEX.md` for easy navigation
4. Follow existing format and commenting style
5. Test queries with both SCOTT and HR schemas where applicable

### Query execution order reference
Remember the SQL execution order when writing queries:
1. **FROM** — Identify source tables
2. **WHERE** — Filter individual rows
3. **GROUP BY** — Group rows
4. **HAVING** — Filter groups
5. **SELECT** — Choose columns
6. **ORDER BY** — Sort final results
