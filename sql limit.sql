## DAY ☀️: **Task – `LIMIT` in SQL**


### ⚡ Task 1: Show First 2 Records  
**Question:** Display the first 2 rows from the `students` table.  
**Requirements:**  
- Use `LIMIT 2`

select *from students limit 2;



### ⚡ Task 2: Show Top 3 Student Names  
**Question:** Show only the `name` column for the top 3 students.  
**Requirements:**  
- Use `SELECT name` and `LIMIT`


select name from students order by name limit 3; 


 ⚡ Task 3: Use LIMIT with ORDER BY  
**Question:** Show the top 2 oldest students.  
**Requirements:**  
- Use `ORDER BY age DESC` and `LIMIT`


select *from students order by age desc limit 2;


### ⚡ Task 4: Show Top Student from Delhi  
**Question:** Display only the first student from `Delhi`.  
**Requirements:**  
- Use `WHERE city = 'Delhi'` and `LIMIT 1`


select *from students where city ='Delhi' limit 1;


### ⚡ Task 5: Use LIMIT After Sorting by Name  
**Question:** Show 4 students sorted alphabetically by name.  
**Requirements:**  
- Use `ORDER BY name ASC` with `LIMIT`


select *from students order by name limit 4;


### ⚡ Task 6: Limit with Selected Columns  
**Question:** Show only `id` and `city` of top 2 students.  
**Requirements:**  
- Use `SELECT id, city` and `LIMIT 2`


select student_id,city from students limit 2;


# ⚡ Task 7: Insert & Limit  
**Question:** Insert a new student `(6, 'Zoya', 23, 'Agra')` and show top 3 students sorted by age.  
**Requirements:**  
- Use `INSERT`, then `ORDER BY age DESC LIMIT 3`

---

insert into students (student_id,name,age,city) values(6,'zoya',23,'Agra');

### ⚡ Task 8: Limit Without WHERE  
**Question:** Display first 5 records from the full table without any condition.  
**Requirements:**  
- Use only `LIMIT` without `WHERE`

select *from students limit 5;

### ⚡ Task 9: Compare with ORDER BY and LIMIT  
**Question:** What is the difference in result of:  
- `SELECT * FROM students LIMIT 3;`  
- `SELECT * FROM students ORDER BY age DESC LIMIT 3;`  
**Requirements:**  
- Try both queries and observe the output order


select *from students limit 3; --it will show the row till 5 rows

select *from students order by age desc limit 3; --it will show  rows where highest age is tilll 3 




### ⚡ Task 10: Practice on New Table  
**Question:** Create a table `books(id, title, price)` and insert 6 records. Show top 2 most expensive books.  
**Requirements:**  
- Use `ORDER BY price DESC LIMIT 2`


-- 1. Create the table
CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    price DECIMAL(10, 2)
);

-- 2. Insert 6 records
INSERT INTO books (id, title, price) VALUES
(1, 'The Alchemist', 350.00),
(2, 'Sapiens', 499.99),
(3, 'Atomic Habits', 420.50),
(4, 'Deep Work', 380.75),
(5, 'The Psychology of Money', 450.00),
(6, 'Thinking, Fast and Slow', 520.00);

-- 3. Query to show top 2 most expensive books
SELECT * FROM books
ORDER BY price DESC
LIMIT 2;


























































