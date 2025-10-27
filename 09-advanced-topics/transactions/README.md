# Transactions: Ensuring Data Integrity

This directory contains a short reference to transactional control for maintaining data consistency.

## Key Concepts Covered

- ACID: Atomicity, Consistency, Isolation, Durability.
- Control: START/BEGIN, COMMIT, ROLLBACK, SAVEPOINT.
- Isolation Levels: READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, SERIALIZABLE.
- Best Practices: Keep transactions short, avoid user interaction, handle errors, choose appropriate isolation.
- Notes: Engine defaults vary (e.g., MySQL InnoDB, PostgreSQL MVCC, Oracle/SQL Server READ COMMITTED).

## Simple example

```sql
START TRANSACTION;
UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;
COMMIT;
-- If any step fails, use ROLLBACK instead of COMMIT
```
