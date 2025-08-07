## DAY ☀️: **Task – `DISTINCT` in SQL**


### ⚡ Task 1: Show Unique Cities  
**Question:** Display all unique city names from the `students` table.  
**Requirements:**  
- Use `SELECT DISTINCT city`

select distinct city from students;





### ⚡ Task 2: Show Unique Ages  
**Question:** Show only distinct age values of students.  
**Requirements:**  
- Use `SELECT DISTINCT age`


select distinct age from students;



### ⚡ Task 3: Use DISTINCT with Name  
**Question:** Display all unique student names.  
**Requirements:**  
- Use `SELECT DISTINCT name`


select distinct name from students;


### ⚡ Task 4: Use DISTINCT with Two Columns  
**Question:** Show unique combinations of `city` and `age`.  
**Requirements:**  
- Use `SELECT DISTINCT city, age`



select distinct city ,age from students;



### ⚡ Task 5: Insert Duplicate City & Test DISTINCT  
**Question:** Insert a new student with city `'Delhi'` and see if `DISTINCT city` still shows only unique values.  
**Requirements:**  
- Perform `INSERT`, then `SELECT DISTINCT city`

---

insert into students(city) values ('delhi')

select distinct city from students;


### ⚡ Task 6: Use DISTINCT with ORDER BY  
**Question:** Show unique cities in alphabetical order.  
**Requirements:**  
- Use `SELECT DISTINCT city ORDER BY city`


select distinct city from students order by city;


### ⚡ Task 7: Count Distinct Cities  
**Question:** Count how many unique cities are in the table.  
**Requirements:**  
- Use `SELECT COUNT(DISTINCT city)`


select distinct count(city) from students;

# ⚡ Task 8: Combine DISTINCT with WHERE  
**Question:** Show unique city names of students aged above 18.  
**Requirements:**  
- Use `DISTINCT` with `WHERE age > 18`


select distinct city from students where age > 18;


### ⚡ Task 9: Find Duplicates Using COUNT  
**Question:** Identify which city has more than 1 student.  
**Requirements:**  
- Use `GROUP BY` and `HAVING COUNT(*) > 1`

select city from students group by city having count(city) > 1;


### ⚡ Task 10: Compare SELECT vs SELECT DISTINCT  
**Question:** Run both queries:  
- `SELECT city FROM students;`  
- `SELECT DISTINCT city FROM students;`  
**Requirements:**  
- Compare difference in result  


select city from students;

select distinct city from students;

















































































