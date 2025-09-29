# SQL Learning Repository

A comprehensive collection of SQL examples, queries, and practical exercises for learning and mastering SQL concepts. This repository serves as both a learning notebook and a quick reference guide covering fundamental to advanced SQL topics.

[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue)](https://github.com/yourusername/SQL)

## 📚 Table of Contents

- [About This Repository](#about-this-repository)
- [Repository Structure](#repository-structure)
  - [Core Concepts](#core-concepts)
  - [SQL Commands](#sql-commands)
  - [Functions](#functions)
  - [Advanced Topics](#advanced-topics)
  - [Practice Materials](#practice-materials)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Quick Start Guide](#quick-start-guide)
- [Project Index](#project-index)
- [Learning Path](#learning-path)
- [Database Compatibility](#database-compatibility)
- [Contributing](#contributing)
- [Conventions](#conventions)

## 🎯 About This Repository

This repository is designed as a hands-on learning resource for SQL, featuring:
- **Practical Examples**: Real-world SQL queries and patterns
- **Structured Learning**: Content organized by topic and difficulty
- **Sample Datasets**: Pre-built tables (EMP, DEPT, SALGRADE, BONUS) for practice
- **Assignments**: Practice exercises to reinforce learning
- **Multi-RDBMS Support**: Examples compatible with MySQL, PostgreSQL, Oracle, and more

Whether you're a beginner starting with SQL or an experienced developer looking for quick reference, this repository has you covered.

## 📂 Repository Structure

### Core Concepts

#### `basics/`
Foundation concepts for SQL development
- **`data_types.sql`** - Comprehensive guide to SQL data types:
  - Character types: `CHAR`, `VARCHAR`, `TEXT`
  - Numeric types: `INT`, `DECIMAL`, `FLOAT`
  - Date/Time types: `DATE`, `TIME`, `TIMESTAMP`
  - Special types: `BOOLEAN`
- **`constraints.sql`** - Database integrity constraints:
  - `NOT NULL`, `UNIQUE`, `PRIMARY KEY`
  - `FOREIGN KEY`, `CHECK`, `DEFAULT`

### SQL Commands

#### `ddl/` - Data Definition Language
Structure and schema management
- **`ddl_commands.sql`** - Table and schema operations:
  - `CREATE`, `ALTER`, `DROP`
  - `TRUNCATE`, `RENAME`
- **`sqlplus_table.sql`** - Sample dataset featuring:
  - **DEPT**: Department information (ACCOUNTING, RESEARCH, SALES, OPERATIONS)
  - **EMP**: Employee records with 14 sample employees
  - **SALGRADE**: Salary grade classifications
  - **BONUS**: Employee bonus tracking

#### `dml/` - Data Manipulation Language
Working with data in tables
- **`dml_commands.sql`** - Record operations:
  - `INSERT` - Adding new records
  - `UPDATE` - Modifying existing records
  - `DELETE` - Removing records

#### `dql/` - Data Query Language
Retrieving and filtering data
- **`dql_commands.sql`** - Basic query patterns with `SELECT`, `WHERE`, `COUNT`
- **`select_alias.sql`** - Column and table aliasing techniques
- **`select_distinct.sql`** - Removing duplicate results

### Functions

#### `functions/single_row/`
Functions that operate on individual rows
- **Examples**:
  - `character_functions.sql` - String manipulation (UPPER, LOWER, SUBSTR, CONCAT, TRIM)
  - `number_functions.sql` - Mathematical operations (ROUND, TRUNC, MOD, ABS)
  - `date_functions.sql` - Date/time operations (SYSDATE, ADD_MONTHS, MONTHS_BETWEEN)
  - `general_functions.sql` - Conditional logic (NVL, DECODE, CASE)
- **Assignments**: `csrf_assignment.sql` - Practice exercises
- **Notes**: `single_row_function_overview.sql` - Concept summaries

#### `functions/aggregate/`
Functions for data aggregation and grouping
- **Examples**:
  - `aggregate_functions.sql` - COUNT, SUM, AVG, MIN, MAX
  - `group_by.sql` - Grouping data for analysis
  - `having.sql` - Filtering grouped results
  - `order_by.sql` - Sorting query results
- **Assignments**: `assignment.sql` - Practice problems

### Advanced Topics

#### `operators/`
SQL operators and expressions
- **Examples**: `operators_examples.sql` - Arithmetic, comparison, logical operators
- **Assignments**: `operators_assignment.sql` - Practice exercises

#### `subqueries/`
Nested query patterns
- **Examples**: `subquery.sql` - Single-row and multi-row subqueries
- **Query Practice**:
  - `subquery_01.sql` - Basic subquery patterns
  - `subquery_02.sql` - Advanced subquery techniques
- **Assignments**: `assignment.sql` - Subquery challenges

#### `joins/` 🚧
Combining data from multiple tables (Planned)
- INNER JOIN, LEFT/RIGHT OUTER JOIN
- FULL OUTER JOIN, CROSS JOIN, SELF JOIN

#### `indexes/` 🚧
Query optimization with indexes (Planned)
- Index creation and types
- Performance tuning

#### `transactions/` 🚧
Transaction management (Planned)
- COMMIT, ROLLBACK, SAVEPOINT
- Transaction isolation levels

### Practice Materials

#### `queries/`
Real-world query practice
- **Examples**:
  - `query_01.sql` - Basic query patterns
  - `query_02.sql` - Intermediate queries
- **Assignments**: `assignment_01.sql` - Comprehensive practice

#### `tables/`
Sample table references
- `college.sql` - College database examples
- `student.sql` - Student table queries

## 🚀 Getting Started

### Prerequisites

Choose one of the following database management systems:
- **MySQL** (Recommended for beginners) - Version 5.7+
- **PostgreSQL** - Version 10+
- **Oracle Database** - XE, SE, or EE
- **MariaDB** - Version 10.2+
- **SQLite** - Version 3+

### Quick Start Guide

#### Option 1: MySQL Setup

```bash
# 1. Create a new database
mysql -u root -p -e "CREATE DATABASE sql_practice;"

# 2. Load the sample dataset
mysql -u root -p sql_practice < ddl/sqlplus_table.sql

# 3. Verify the setup
mysql -u root -p sql_practice -e "SELECT * FROM DEPT;"
```

#### Option 2: PostgreSQL Setup

```bash
# 1. Create a new database
createdb sql_practice

# 2. Load the sample dataset
psql sql_practice -f ddl/sqlplus_table.sql

# 3. Verify the setup
psql sql_practice -c "SELECT * FROM DEPT;"
```

#### Option 3: SQLite Setup

```bash
# 1. Create database and load data
sqlite3 sql_practice.db < ddl/sqlplus_table.sql

# 2. Verify the setup
sqlite3 sql_practice.db "SELECT * FROM DEPT;"
```

### Exploring the Repository

1. **Start with Basics**: Begin with `basics/` to understand data types and constraints
2. **Learn Commands**: Progress through `ddl/`, `dml/`, and `dql/` directories
3. **Master Functions**: Explore `functions/single_row/` and `functions/aggregate/`
4. **Practice Queries**: Test your skills with exercises in `queries/` and `subqueries/`
5. **Consult INDEX.md**: Use [`INDEX.md`](INDEX.md) for quick navigation to specific topics

## 📋 Project Index

For a complete list of all files with direct links, see [`INDEX.md`](INDEX.md).

**Quick Access by Topic**:
- [Basics](basics/)
- [DDL Commands](ddl/)
- [DML Commands](dml/)
- [DQL Commands](dql/)
- [Single-Row Functions](functions/single_row/)
- [Aggregate Functions](functions/aggregate/)
- [Operators](operators/)
- [Subqueries](subqueries/)
- [Practice Queries](queries/)

## 🎓 Learning Path

### Beginner Path (1-2 weeks)
1. Data types and basic constraints (`basics/`)
2. Creating and modifying tables (`ddl/`)
3. Basic SELECT queries (`dql/`)
4. Simple INSERT, UPDATE, DELETE operations (`dml/`)

### Intermediate Path (2-3 weeks)
1. Single-row functions (`functions/single_row/`)
2. Aggregate functions and GROUP BY (`functions/aggregate/`)
3. Operators and expressions (`operators/`)
4. Basic subqueries (`subqueries/`)

### Advanced Path (Ongoing)
1. Complex subqueries and correlated queries
2. JOIN operations (upcoming)
3. Indexes and performance optimization (upcoming)
4. Transaction management (upcoming)

## 🔧 Database Compatibility

This repository provides examples that work across multiple database systems:

| Feature | MySQL | PostgreSQL | Oracle | SQLite |
|---------|-------|------------|--------|--------|
| Basic DDL/DML/DQL | ✅ | ✅ | ✅ | ✅ |
| Single-row functions | ✅ | ✅ | ✅ | ⚠️ Limited |
| Aggregate functions | ✅ | ✅ | ✅ | ✅ |
| Subqueries | ✅ | ✅ | ✅ | ✅ |

**Notes**:
- Some syntax variations exist (e.g., `AUTO_INCREMENT` in MySQL vs `SERIAL` in PostgreSQL)
- Oracle-specific examples may use `DUAL` table or `SYSDATE`
- Function names may differ slightly between systems

## 🤝 Contributing

Contributions are highly welcome! Here's how you can help:

### Areas for Contribution
- **New Examples**: Add practical SQL examples
- **Assignments**: Create practice exercises with solutions
- **Documentation**: Improve explanations and add comments
- **Database Variants**: Provide syntax examples for different RDBMS
- **Advanced Topics**: Contribute JOIN, INDEX, or TRANSACTION examples

### How to Contribute

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-examples`)
3. Add your changes following the [conventions](#conventions)
4. Update `INDEX.md` with links to new files
5. Commit your changes (`git commit -m 'Add new subquery examples'`)
6. Push to your branch (`git push origin feature/new-examples`)
7. Open a Pull Request

### Priority Topics Needed
- 🎯 **High Priority**: JOIN operations with multiple examples
- 🎯 **High Priority**: Index creation and optimization
- 📝 **Medium Priority**: Transaction management examples
- 📝 **Medium Priority**: Window functions
- 💡 **Nice to Have**: Stored procedures and triggers
- 💡 **Nice to Have**: Complex real-world scenarios

## 📝 Conventions

### Directory Structure
- **`examples/`** - Runnable reference examples demonstrating concepts
- **`assignments/`** - Practice questions and exercises for self-study
- **`notes/`** - Brief overviews and concept summaries

### File Naming
- Use lowercase with underscores: `aggregate_functions.sql`
- Be descriptive: `character_functions.sql` not `char_funcs.sql`
- Use consistent patterns: `assignment.sql`, `query_01.sql`

### SQL Style Guide
- Keywords in UPPERCASE: `SELECT`, `FROM`, `WHERE`
- Table/column names as defined in schema
- Include comments for complex queries
- Format for readability with proper indentation

### Code Comments
```sql
-- Single-line comment for brief explanations

/* 
 * Multi-line comment for detailed explanations
 * Use for complex logic or examples
 */
```

### Adding New Content
1. Place files in appropriate subdirectories
2. Follow existing naming patterns
3. Add descriptive comments in SQL files
4. Update the topic's `README.md`
5. Add entry to main [`INDEX.md`](INDEX.md)
6. Test queries against sample dataset

### Documentation Standards
- Start each SQL file with a brief comment explaining its purpose
- Include example outputs as comments where helpful
- Note any RDBMS-specific syntax
- Link related files when applicable

## 📄 License

This project is open source and available for educational purposes.

## 🙏 Acknowledgments

- Sample dataset (DEPT, EMP, SALGRADE) inspired by Oracle's classic training examples
- Built as a learning resource for SQL students and developers

---

**Repository Status**: Active Development 🚀

**Last Updated**: September 2025

**Maintainer**: Personal SQL Learning Project

For questions, suggestions, or issues, please open a GitHub issue or contribute via pull request!
