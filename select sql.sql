## DAY ☀️: **Task – SELECT in SQL** 


### ⚡ Task 1: Select All Data  
**Question:** Write a query to display all columns from the `students` table.  
**Requirements:**  
- Use `SELECT *`  
- Table: `students`  

select *from students;


### ⚡ Task 2: Select a Specific Column  
**Question:** Show only the `name` of all students.  
**Requirements:**  
- Use column selection  
- Do not use `*`  

select name from student;


### ⚡ Task 3: Select Multiple Columns  
**Question:** Display the `name` and `city` columns from the `students` table.  
**Requirements:**  
- Use comma-separated column names  

select name ,city from student;





### ⚡ Task 4: Select with WHERE Condition  
**Question:** Show all details of students who live in `Delhi`.  
**Requirements:**  
- Use `WHERE` with `SELECT`  

select *from student where city ='Delhi';


### ⚡ Task 5: Select with Comparison  
**Question:** Display students whose age is greater than 18.  
**Requirements:**  
- Use `SELECT` with `WHERE` and `>` operator  

select *from student where age > 18;

### ⚡ Task 6: Select and Order  
**Question:** Show all students ordered by `age` in ascending order.  
**Requirements:**  
- Use `ORDER BY` clause  

select *from student order by age ;

### ⚡ Task 7: Select with LIMIT  
**Question:** Display only the first 2 student records.  
**Requirements:**  
- Use `LIMIT` clause  

select *from student limit 2;

### ⚡ Task 8: Select Distinct Cities  
**Question:** Show all unique city names from the `students` table.  
**Requirements:**  
- Use `DISTINCT` keyword  

select distinct(city) from student;

### ⚡ Task 9: Select with Aliases  
**Question:** Display `name` as `Student_Name` and `city` as `Location`.  
**Requirements:**  
- Use `AS` for column alias  

select name as student_name ,city as location from student;

### ⚡ Task 10: Select with All Columns and Condition  
**Question:** Show all details of students aged 20 or more and living in `Mumbai`.  
**Requirements:**  
- Use `SELECT *` with `WHERE` and `AND`  

select *from student where age >= 20 and city = 'Mumbai';

**End of Document** ✨
















































