# Sequences: Auto-Incrementing Values

This directory is dedicated to understanding and demonstrating SQL sequences, which are database objects used to generate unique, sequential numbers automatically. Sequences are commonly used for generating primary key values.

## Sequence Creation

Sequences provide a way to generate unique numbers, often used for primary keys when an auto-incrementing column is not directly supported or when more control is needed.

-   **`CREATE SEQUENCE`:** The basic syntax to create a sequence.
    ```sql
    CREATE SEQUENCE sequence_name
    [INCREMENT BY step]
    [START WITH value]
    [MAXVALUE max_value | NO MAXVALUE]
    [MINVALUE min_value | NO MINVALUE]
    [CYCLE | NO CYCLE]
    [CACHE number | NO CACHE]
    [ORDER | NO ORDER];
    ```
    -   `INCREMENT BY`: Specifies the step between sequence numbers (default is 1).
    -   `START WITH`: Sets the initial value of the sequence (default is 1 or MINVALUE).
    -   `MAXVALUE`/`MINVALUE`: Defines the upper/lower bounds for the sequence. `NO MAXVALUE`/`NO MINVALUE` means no bound.
    -   `CYCLE`/`NO CYCLE`: Determines if the sequence should wrap around after reaching its maximum or minimum value.
    -   `CACHE`: Specifies how many sequence numbers to pre-allocate in memory for faster access. `NO CACHE` generates numbers on demand.
    -   `ORDER`: Ensures that sequence numbers are generated in order, even in a clustered environment.

## Sequence Usage

Once a sequence is created, you can retrieve the next value from it.

-   **Getting the Next Value:**
    -   `NEXT VALUE FOR sequence_name` (Standard SQL, supported by SQL Server, PostgreSQL)
    -   `sequence_name.NEXTVAL` (Oracle, MySQL 8+)

-   **Using in `INSERT` Statements:** Sequences are commonly used to populate primary key columns.
    ```sql
    INSERT INTO your_table (id_column, other_column)
    VALUES (NEXT VALUE FOR your_sequence, 'some_value');
    ```

## Sequence Management

-   **Altering Sequences:** You can modify certain properties of an existing sequence using `ALTER SEQUENCE`.
    ```sql
    ALTER SEQUENCE sequence_name
    INCREMENT BY 2;
    ```
    Note: Not all properties can be altered after creation.
-   **Dropping Sequences:** To remove a sequence, use `DROP SEQUENCE`.
    ```sql
    DROP SEQUENCE sequence_name;
    ```
-   **Querying Sequence Properties:** You can often query system views or use specific commands to see sequence details (e.g., `SHOW CREATE SEQUENCE sequence_name;` in MySQL).

## Practical Examples

Sequences are particularly useful when:
