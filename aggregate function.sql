---### ⚡ Task 1: Count Total Students  **Question:** Write a query to count how many students are in the `students` table.  **Requirements:**  
- Use `COUNT(*)`


select count(*) from students;



### ⚡ Task 2: Total of All Marks  
**Question:** Calculate the total marks scored by all students.  
**Requirements:**  
- Use `SUM(marks)`


select student_id,sum(marks) as total_marks from enrollments group by student_id;


select students.student_id,sum(enrollments.marks) as total_marks from students
inner join enrollments on
students.student_id=enrollments.student_id
group by students.student_id;

### ⚡ Task 3: Find Average Age  
**Question:** Show the average age of all students.  
**Requirements:**  
- Use `AVG(age)`


select avg(age) student_id from students group by student_id;



### ⚡ Task 4: Find Maximum Marks  
**Question:** Display the highest marks from the students table.  
**Requirements:**  
- Use `MAX(marks)`


select max(marks) from enrollments;


### ⚡ Task 5: Find Minimum Age  
**Question:** Show the smallest age among students.  
**Requirements:**  
- Use `MIN(age)`

select min(age) from students;



### ⚡ Task 6: Use COUNT with Column  
**Question:** Count how many students have marks (exclude NULLs).  
**Requirements:**  
- Use `COUNT(marks)`



select count(*) from students where student_id is null;


### ⚡ Task 7: Alias in Aggregate  
**Question:** Show the total marks as `Total_Score`.  
**Requirements:**  
- Use `AS` to rename the result column


select sum(marks) as total_score from enrollments;



### ⚡ Task 8: Combine AVG with ROUND  
**Question:** Display average marks rounded to 2 decimal places.  
**Requirements:**  
- Use `ROUND(AVG(marks), 2)`


select round(avg(marks), 2) AS average_marks
from enrollments;

### ⚡ Task 9: Insert & Aggregate  
**Question:** Insert a student `(6, 'Zoya', 20, 84)` and calculate the new total number of students.  
**Requirements:**  
- Perform `INSERT`, then `COUNT(*)`


select count(*) from students;


### ⚡ Task 10: Use All Aggregates Together  
**Question:** Write one query that shows `MIN(marks)`, `MAX(marks)`, `AVG(marks)`, and `SUM(marks)` with column aliases.  
**Requirements:**  
- Use all four aggregate functions in one `SELECT`





select min(marks) ,avg(marks) ,max(marks),sum(marks),count(marks) from enrollments;




