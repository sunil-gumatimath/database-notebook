CREATE TABLE college(
  college_id INT AUTO_INCREMENT PRIMARY KEY,
  college_name VARCHAR(100) NOT NULL,
  location VARCHAR(100) DEFAULT 'unknown'
);

CREATE TABLE student(
  student_id INT AUTO_INCREMENT PRIMARY KEY,
  student_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE,
  age INT CHECK (age > 17),
  s_status VARCHAR(20) DEFAULT 'active',
  college_id INT,
  FOREIGN KEY (college_id) REFERENCES college(college_id)
);

SELECT * FROM learners;
SELECT * FROM students;
SELECT * FROM college;


SELECT student_name,email from students;

RENAME TABLE learners to students;