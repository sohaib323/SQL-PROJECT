### DAY ☀️: **Task – Grouping Data in SQL (`GROUP BY`)**



### ⚡ Task 1: Count Students by City  
**Question:** Show how many students are there in each city.  
**Requirements:**  
- Use `GROUP BY city`  
- Use `COUNT(*)`


select count(*) from students group by city;

### ⚡ Task 2: Average Marks per City  
**Question:** Display the average marks of students grouped by their city.  
**Requirements:**  
- Use `AVG(marks)`  
- Group by `city`


select s.city,(avg(e.marks)) as average_marks from students s
inner join enrollments e on
s.student_id=e.student_id
group by s.city;

select *from students;

### ⚡ Task 3: Sum of Marks by Age  
**Question:** Find the total marks of students grouped by age.  
**Requirements:**  
- Use `SUM(marks)`  
- Group by `age`

select s.age,(sum(e.marks)) as total_marks from students s
inner join enrollments e
on 
s.student_id=e.student_id 
group by s.age;

### ⚡ Task 4: Max Marks by City  
**Question:** Show the highest marks scored by students in each city.  
**Requirements:**  
- Use `MAX(marks)`  
- Group by `city`



select s.city,(max(e.marks)) as highest_marks from students s
join enrollments e on
s.student_id=e.student_id
group by s.city;




### ⚡ Task 5: Group and Order  
**Question:** Count students in each city and sort results by city name.  
**Requirements:**  
- Use `GROUP BY` and `ORDER BY`

select count(city) ,city from students group by city order by city desc;


### ⚡ Task 6: Use Aliases with Grouping  
**Question:** Show city and average marks as `City_Name` and `Average_Score`.  
**Requirements:**  
- Use `AS` to rename output columns


select s.city as city_name,(avg(e.marks)) as average_score from students s
inner join enrollments e on
s.student_id=e.student_id
group by city_name;

### ⚡ Task 7: Group by Multiple Columns  
**Question:** Group students by both `city` and `age`, and count how many in each group.  
**Requirements:**  
- Use `GROUP BY city, age`


SELECT city, age, COUNT(*) AS student_count
FROM students
GROUP BY city, age;

### ⚡ Task 8: Filter Before Grouping  
**Question:** Show number of students per city where age > 18.  
**Requirements:**  
- Use `WHERE` with `GROUP BY`


select count(*) ,city from students where age > 18 group by city;

### ⚡ Task 9: Group and Use MIN  
**Question:** Show the minimum marks in each city.  
**Requirements:**  
- Use `MIN(marks)` with `GROUP BY city`

select s.city,(min(e.marks)) as minimum marks from students s
inner join enrollments e on
s.student_id=e.student_id
group by s.city;


### ⚡ Task 10: Insert & Group  
**Question:** Insert a student `'Zoya'` from `'Chennai'` with marks `91` and then show updated average marks per city.  
**Requirements:**  
- Perform `INSERT`, then use `GROUP BY`



insert into students (name, city, marks)
values ('zoya', 'chennai', 91);


select city, avg(marks) as average_marks
from students
group by city;





