### DAY ☀️: **Task – `HAVING` Clause in SQL**


### ⚡ Task 1: Average Marks Greater Than 80  
**Question:** Show cities where the **average marks** of students are more than 80.  
**Requirements:**  
- Use `GROUP BY city`  
- Use `HAVING AVG(marks) > 80`

select s.city,(avg(e.marks)) as average_marks from students s
inner join enrollments e on
s.student_id=e.student_id
group by s.city
having (avg(e.marks))>80;



### ⚡ Task 2: Count Students > 1 in City  
**Question:** Display cities that have **more than one student**.  
**Requirements:**  
- Use `COUNT(*)`  
- Filter with `HAVING COUNT(*) > 1`

select count(*) ,city from students 
group by city
having count(*) >1;


### ⚡ Task 3: Total Marks Greater Than 150  
**Question:** Show cities where the **sum of marks** is more than 150.  
**Requirements:**  
- Use `SUM(marks)`  
- Use `HAVING`

select s.city,(sum(e.marks)) from students s
inner join enrollments e on
s.student_id=e.student_id
group by s.city
having (sum(e.marks)) > 150;


### ⚡ Task 4: Minimum Marks Using HAVING  
**Question:** Show cities where the **minimum marks** is greater than 70.  
**Requirements:**  
- Use `MIN(marks)`  
- Use `GROUP BY` and `HAVING`


select s.city,(min(e.marks)) from students s
inner join enrollments e on
s.student_id=e.student_id
group by s.city
having (min(e.marks)) > 70;


### ⚡ Task 5: Combine WHERE and HAVING  
**Question:** From students with marks > 65, show cities where the **average marks** is above 80.  
**Requirements:**  
- Use `WHERE` and `GROUP BY`  
- Use `HAVING` on `AVG(marks)`

select s.city,(avg(e.marks)) as average_marks from students s
inner join enrollments e on
s.student_id=e.student_id
where e.marks > 65
group by s.city 
having (avg(e.marks)) > 80;

### ⚡ Task 6: HAVING Without WHERE  
**Question:** Show cities where the **maximum marks** is less than 90.  
**Requirements:**  
- Use `MAX(marks)`  
- Only use `GROUP BY` and `HAVING`


select s.city ,(max(e.marks)) as maximum_marks from students s
inner join enrollments e 
on
s.student_id=e.student_id
group by s.city
having (max(e.marks)) < 90;



### ⚡ Task 7: Alias with HAVING  
**Question:** Show city and `AVG(marks)` as `Average_Score` and filter scores above 75.  
**Requirements:**  
- Use `AS Average_Score`  
- Filter using `HAVING AVG(marks) > 75`


select s.city,(avg(e.marks)) as average_score from students s
inner join enrollments e on
s.student_id=e.student_id
group by s.city 
having (avg(e.marks)) > 75;


### ⚡ Task 8: HAVING with COUNT and GROUP BY Age  
**Question:** Show number of students per age where age group has **more than 1 student**.  
**Requirements:**  
- Use `GROUP BY age`  
- Use `HAVING COUNT(*) > 1`


select count(*) ,age from students 
group by age
having count(*) >1;

### ⚡ Task 9: Group by Multiple Columns + HAVING  
**Question:** Group students by `city` and `age`, show how many in each group, but only groups with more than 1 student.  
**Requirements:**  
- Use `GROUP BY city, age`  
- Use `HAVING COUNT(*) > 1`



select count(*),city,age from students
group by city,age
having count(*) > 1;


### ⚡ Task 10: Insert & Apply HAVING  
**Question:** Insert a new student with city `'Delhi'` and marks `91`, then show cities with **average marks > 85**.  
**Requirements:**  
- Use `INSERT`, then `GROUP BY city`  
- Use `HAVING`




INSERT INTO students (city, marks) VALUES ('Delhi', 91);

select s.city, (avg(e.marks)) as avg_marks
from students s
inner join enrollments e on
s.student_id=e.student_id
group by s.city
having (avg(e.marks)) > 85;


















