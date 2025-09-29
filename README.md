# SQL Learning Repository

A simple collection of SQL examples and practice exercises for learning SQL step by step.

## 📚 What's Inside

This repository contains:
- SQL basics (data types, constraints)
- Common SQL commands (CREATE, SELECT, INSERT, UPDATE, DELETE)
- SQL functions (string, number, date functions)
- Practice queries and assignments
- Sample database with employee and department data

## 📂 Folder Structure

```
SQL/
├── basics/              # Data types and constraints
├── ddl/                 # CREATE, ALTER, DROP tables
├── dml/                 # INSERT, UPDATE, DELETE data
├── dql/                 # SELECT queries
├── functions/           # SQL functions
│   ├── single_row/      # String, number, date functions
│   └── aggregate/       # COUNT, SUM, AVG, MAX, MIN
├── operators/           # Comparison and logical operators
├── subqueries/          # Nested queries
└── queries/             # Practice exercises
```

## 🚀 Quick Start

### 1. Install a Database
Choose one:
- **MySQL** (easiest for beginners)
- **PostgreSQL**
- **SQLite**

### 2. Create Practice Database

**For MySQL:**
```bash
mysql -u root -p
CREATE DATABASE sql_practice;
USE sql_practice;
SOURCE ddl/sqlplus_table.sql;
```

**For PostgreSQL:**
```bash
createdb sql_practice
psql sql_practice -f ddl/sqlplus_table.sql
```

### 3. Try Your First Query
```sql
SELECT * FROM DEPT;
SELECT * FROM EMP;
```

## 📖 Learning Order

**Week 1-2: Basics**
1. `basics/data_types.sql` - Learn SQL data types
2. `basics/constraints.sql` - Understand database rules
3. `ddl/ddl_commands.sql` - Create and modify tables
4. `dql/dql_commands.sql` - Basic SELECT queries

**Week 3-4: Functions**
1. `functions/single_row/examples/` - Work with text, numbers, dates
2. `functions/aggregate/examples/` - Learn COUNT, SUM, AVG

**Week 5-6: Advanced**
1. `operators/examples/` - Comparison and logic
2. `subqueries/examples/` - Nested queries
3. `queries/examples/` - Real practice problems

## 📝 Sample Data

The repository includes a practice database with:
- **DEPT** table: 4 departments (Accounting, Research, Sales, Operations)
- **EMP** table: 14 employees with salaries and job titles
- **SALGRADE** table: Salary grade levels
- **BONUS** table: Employee bonuses

## 💡 How to Use This Repository

1. **Learn**: Open a `.sql` file and read the examples
2. **Practice**: Run the queries in your database
3. **Test**: Try the assignments in each folder
4. **Experiment**: Modify queries to see what happens

## 📋 Quick Links

Full file list: See [`INDEX.md`](INDEX.md)

**Main Topics:**
- [Data Types](basics/data_types.sql)
- [DDL Commands](ddl/ddl_commands.sql)
- [DML Commands](dml/dml_commands.sql)
- [SELECT Queries](dql/dql_commands.sql)
- [Functions](functions/)
- [Practice Queries](queries/)

## 🎯 Tips for Learning

- **Start simple**: Don't skip the basics
- **Type, don't copy**: Write queries yourself
- **Make mistakes**: Errors help you learn
- **Practice daily**: Even 15 minutes helps
- **Use comments**: Write notes in your SQL files

## 📌 Notes

- Examples work with MySQL, PostgreSQL, and Oracle
- Some syntax may vary between databases
- Check comments in files for database-specific notes

---

**Happy Learning!** 🎓

Start with `basics/data_types.sql` and work your way through each folder.
