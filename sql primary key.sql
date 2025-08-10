### DAY ☀️: **Task – Primary Keys in SQL**


### ⚡ Task 1: Create Table with Primary Key  
**Question:** Create a `students` table with `id` as the Primary Key.  
**Requirements:**  
- Columns: `id`, `name`, `age`  
- Use `PRIMARY KEY` on `id`  

create table students(
id int primary key
name varchar(500),
age int
);






### ⚡ Task 2: Insert Unique IDs  
**Question:** Insert 3 student records with unique `id` values.  
**Requirements:**  
- Do not use duplicate or NULL ids  
### DAY ☀️: **Task – Primary Keys in SQL**

INSERT INTO students (id, name, age) VALUES
(1, 'Aarav Sharma', 20),
(2, 'Meera Patel', 22),
(3, 'Rohan Verma', 19);
 










### ⚡ Task 3: Try Duplicate Primary Key  
**Question:** Try inserting a student with an `id` that already exists.  
**Requirements:**  
- Observe the error  
- Learn why `PRIMARY KEY` must be unique  

INSERT INTO students (id, name, age) VALUES
(1, 'Simran Kaur', 21);


### ⚡ Task 4: Use Primary Key in Another Table  
**Question:** Create a `marks` table with `student_id` referencing the `id` in `students`.  
**Requirements:**  
- Add `student_id` as a **foreign key**  
- Use `id` as the Primary Key in `students`

CREATE TABLE marks (
  mark_id INT PRIMARY KEY,
  student_id INT,
  subject VARCHAR(100),
  score INT,
  FOREIGN KEY (student_id) REFERENCES students(id)
);
FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE


### ⚡ Task 5: Composite Primary Key  
**Question:** Create a `course_enrollments` table using both `student_id` and `course_id` as the Primary Key.  
**Requirements:**  
- Use `PRIMARY KEY(student_id, course_id)`  

CREATE TABLE course_enrollments (
  student_id INT,
  course_id INT,
  enrollment_date DATE,
  PRIMARY KEY (student_id, course_id),
  FOREIGN KEY (student_id) REFERENCES students(id)
);





# Keys  ## ⚡ Task 6: Check Not Null Behavior  
**Question:** Try inserting a student record with `NULL` in `id`.  
**Requirements:**  
- See the error  
- Understand that `NULL` is not allowed in Primary

INSERT INTO students (id, name, age) VALUES
(NULL, 'Neha Gupta', 21);


### ⚡ Task 7: Use AUTO_INCREMENT  
**Question:** Create a table `employees` where `emp_id` is a primary key and auto-incremented.  
**Requirements:**  
- Use `AUTO_INCREMENT` (MySQL specific)  

CREATE TABLE employees (
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  position VARCHAR(100),
  salary DECIMAL(10, 2)
);
INSERT INTO employees (name, position, salary) VALUES
('Anjali Mehta', 'Software Engineer', 75000.00),
('Rajiv Sinha', 'Project Manager', 95000.00);


### ⚡ Task 8: Rename Column and Reassign Primary Key  
**Question:** Rename `id` column in `students` to `student_id` and set it as Primary Key.  
**Requirements:**  
- Use `ALTER TABLE`  

-- Step 1: Rename the column
ALTER TABLE students
CHANGE COLUMN id student_id INT;

-- Step 2: Drop the existing primary key (if needed)
ALTER TABLE students
DROP PRIMARY KEY;

-- Step 3: Set the new column as the primary key
ALTER TABLE students
ADD PRIMARY KEY (student_id);


### ⚡ Task 9: Drop and Recreate Primary Key  
**Question:** Drop the Primary Key from a table and re-add it on a new column.  
**Requirements:**  
- Use `ALTER TABLE` with `DROP PRIMARY KEY` and `ADD PRIMARY KEY`



ALTER TABLE students
DROP PRIMARY KEY;

ALTER TABLE students
ADD PRIMARY KEY (roll_number);



### ⚡ Task 10: Create Table Without Primary Key  
**Question:** Create a table `feedback` without a primary key and insert duplicate rows.  
**Requirements:**  
- Learn what happens without Primary Key 



CREATE TABLE feedback (
  name VARCHAR(100),
  comment TEXT,
  rating INT
);



INSERT INTO feedback (name, comment, rating) VALUES
('Amit', 'Great service!', 5),
('Amit', 'Great service!', 5),
('Priya', 'Could be better.', 3);

















































