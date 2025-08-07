### DAY ☀️: **Task – Foreign Keys in SQL**


### ⚡ Task 1: Create Parent Table with Primary Key  
**Question:** Create a table `departments` with `dept_id` as Primary Key.  
**Requirements:**  
- Columns: `dept_id`, `dept_name`  
- Use `PRIMARY KEY` on `dept_id`

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

### ⚡ Task 2: Create Child Table with Foreign Key  
**Question:** Create a table `employees` with a foreign key that refers to `departments`.  
**Requirements:**  
- Columns: `emp_id`, `emp_name`, `dept_id`  
- `dept_id` should reference `departments(dept_id)`


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);



### ⚡ Task 3: Insert Valid Foreign Key  
**Question:** Insert department and employee records where `dept_id` in employees exists in departments.  
**Requirements:**  
- No error must occur  



INSERT INTO departments (dept_id, dept_name)
VALUES (1, 'HR'), (2, 'Finance'), (3, 'Engineering');


INSERT INTO employees (emp_id, emp_name, dept_id)
VALUES 
(101, 'Amit', 1),
(102, 'Neha', 2),
(103, 'Raj', 3);




### ⚡ Task 4: Insert Invalid Foreign Key  
**Question:** Try inserting an employee with a `dept_id` that doesn’t exist in departments.  
**Requirements:**  
- Observe the foreign key constraint error  



INSERT INTO employees (emp_id, emp_name, dept_id)
VALUES (104, 'Sneha', 99);  


### ⚡ Task 5: Allow NULL Foreign Key  
**Question:** Insert an employee with NULL `dept_id` to represent no assigned department.  
**Requirements:**  
- Ensure the table allows `dept_id` to be NULL  


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


INSERT INTO employees (emp_id, emp_name, dept_id)
VALUES (105, 'Kiran', NULL);


### ⚡ Task 6: View Relationship  
**Question:** Write a query to view employee name and corresponding department name.  
**Requirements:**  
- Use `JOIN` between `employees` and `departments`


SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;


### ⚡ Task 7: Delete from Parent with Restriction  
**Question:** Try deleting a department that is used in `employees`.  
**Requirements:**  
- Confirm that deletion is restricted due to foreign key  

DELETE FROM departments
WHERE dept_id = 1;



### ⚡ Task 8: Delete from Parent After Removing Child  
**Question:** First delete employees in a department, then delete the department.  
**Requirements:**  
- Test the foreign key behavior  


DELETE FROM employees
WHERE dept_id = 1;


DELETE FROM departments
WHERE dept_id = 1;


### ⚡ Task 9: Use Foreign Key with Composite Key  
**Question:** Create a table `student_courses` with a foreign key referring to composite key `(student_id, course_id)` in another table.  
**Requirements:**  
- Test advanced foreign key usage  

CREATE TABLE student_enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id)
);


CREATE TABLE student_courses (
    student_id INT,
    course_id INT,
    grade CHAR(1),
    FOREIGN KEY (student_id, course_id)
        REFERENCES student_enrollments(student_id, course_id)
);


### ⚡ Task 10: Rename Foreign Key Column  
**Question:** Rename `dept_id` in `employees` to `department_id` and reassign the foreign key.  
**Requirements:**  
- Use `ALTER TABLE` and re-establish the relationship  


ALTER TABLE employees
DROP FOREIGN KEY fk_employees_dept;  -- Replace with actual constraint name

ALTER TABLE employees
CHANGE dept_id department_id INT;


ALTER TABLE employees
ADD CONSTRAINT fk_employees_department
FOREIGN KEY (department_id) REFERENCES departments(dept_id);


ALTER TABLE employees
ADD CONSTRAINT fk_employees_department
FOREIGN KEY (department_id) REFERENCES departments(dept_id);































































































































































