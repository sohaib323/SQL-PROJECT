CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    marks INT
);

INSERT INTO student VALUES
(1, 'Anjali', 'Delhi', 85),
(2, 'Rahul', 'Mumbai', 78),
(3, 'Priya', 'Chennai', 92),
(4, 'Neha', 'Delhi', 88),
(5, 'Rohan', 'Pune', 74);

### ⚡ Task 1: Create a Basic Index  
**Question:** Create an index on the `city` column to improve city-based queries.

CREATE INDEX idx_city ON student(city);



### ⚡ Task 2: Run Query to Use Index  
**Question:** Write a query to fetch all students from `'Delhi'` using the indexed column.



select *from student where city in ('Delhi');

### ⚡ Task 3: Create a Composite Index  
**Question:** Create an index on both `city` and `marks` together.  
**Hint:** Useful when filtering or ordering by both columns.



CREATE INDEX idx_city_marks ON student(city, marks);

SELECT * FROM student
WHERE city = 'Delhi' AND marks > 80;

### ⚡ Task 4: Create a Unique Index  
**Question:** Add a `email` column to the `students` table and create a **UNIQUE INDEX** on it.

ALTER TABLE student
ADD email VARCHAR(100);

CREATE UNIQUE INDEX idx_email_unique ON student(email);

SELECT * FROM student WHERE email = 'anjali@example.com';

### ⚡ Task 5: Drop an Index  
**Question:** Write the command to drop the index created on the `city` column


DROP INDEX idx_city;
select *from student;


### ⚡ Task 6: Check Performance  
**Question:** Compare query speed before and after using indexes (observe using `EXPLAIN` or `ANALYZE`).























