-- What is DML?

-- DML stands for Data Manipulation Language.
-- It deals with the data inside the database objects (like tables).
-- Unlike DDL (which changes structure), DML adds, updates, deletes, or retrieves the data.

-- INSERT → Add new records (rows).

INSERT INTO student (student_id, student_name, email, age, s_status, college_id)
VALUES (1, 'Sunil', 'sunil@mail.com', 25, 'not active', 101);

-- UPDATE → Modify existing records.

UPDATE students
SET s_status = 'not active'
WHERE student_id = 1;

-- DELETE → Remove records.

DELETE FROM student
WHERE student_id = 1;

-- SELECT → Retrieve data from the table (technically part of DQL, but often grouped with DML).
SELECT * FROM students;
