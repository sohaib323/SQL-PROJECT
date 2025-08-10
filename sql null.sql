### DAY ☀️: **Task – NULL Values in SQL**


### ⚡ Task 1: Find NULL Marks  
**Question:** Show all students who have `NULL` in their `marks` column.  
**Requirements:**  
- Use `IS NULL`  

select *from enrollments where marks is null;


## ⚡ Task 2: Find Students with City Name  
**Question:** Display students whose `city` is **not NULL**.  
**Requirements:**  
- Use `IS NOT NULL`  

select *from students where city is not null;


### ⚡ Task 3: Insert Student with NULL  
**Question:** Insert a student with no `marks` (leave it as NULL).  
**Requirements:**  
- Example: `(6, 'Zoya', 'Pune', NULL)`



insert into students (student_id,name,city,age)values(6,'zoya','Pune',null);

### ⚡ Task 4: Use COUNT and Ignore NULL  
**Question:** Count how many students have `marks`.  
**Requirements:**  
- Use `COUNT(marks)`  

select count(marks) from student;



### ⚡ Task 5: Compare with NULL (Invalid)  
**Question:** Try `WHERE marks = NULL` and observe the result.  
**Requirements:**  
- Understand why `IS NULL` is necessary 


select *from student where marks is null;


### ⚡ Task 6: Use WHERE with IS NOT NULL  
**Question:** Show all students whose city is available (not missing).  
**Requirements:**  
- Use `WHERE city IS NOT NULL`  


select *from students where city is not null;


### ⚡ Task 7: Check NULL in Multiple Columns  
**Question:** Show students where `marks` or `city` is NULL.  
**Requirements:**  
- Use `OR` condition with `IS NULL


select *from student where marks is null or city is null;

### ⚡ Task 8: Aggregate Ignoring NULL  
**Question:** Show the average marks of students (ignoring NULLs).  
**Requirements:**  
- Use `AVG(marks)`



select avg(marks) from student;


### ⚡ Task 9: Use CASE to Replace NULL  
**Question:** Show all students and if marks is NULL, show ‘No Marks’.  
**Requirements:**  
- Use `CASE WHEN marks IS NULL THEN 'No Marks' ELSE marks END`

select * 
case 
when marks is null then 'no marks' else marks end
from student;



### ⚡ Task 10: Delete Row with NULL City  
**Question:** Delete students whose `city` is NULL.  
**Requirements:**  
- Use `DELETE FROM students WHERE city IS NULL;`



delete *from student where city is null;









































