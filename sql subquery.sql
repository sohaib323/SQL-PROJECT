### DAY ☀️: **Task – Subqueries in SQL**

```
Created by :  
Name: Dhiraj Kr.  
Profession: Data Scientist & GenAI Developer  
```  
---

### ⚡ Task 1: Highest Marks  
**Question:** Display the name of the student who scored the highest marks.  
**Requirements:**  
- Use a subquery with `MAX(marks)` inside `WHERE

SELECT name, marks
FROM student
WHERE marks = (SELECT MAX(marks) FROM student);


### ⚡ Task 2: Above Average Marks  
**Question:** Show names of students who scored more than the average marks.  
**Requirements:**  
- Use `AVG(marks)` inside subquery

select name ,marks from student where marks >(select avg(marks) from student);

### ⚡ Task 3: Single-Row Subquery  
**Question:** Find the student whose marks are equal to the **minimum marks**.  
**Requirements:**  
- Use `SELECT MIN(marks)` in a subquery

select name from student where marks =(select min(marks) from student);

### ⚡ Task 4: Multi-Row Subquery  
**Question:** Get names of students whose marks are among the top 2 distinct scores.  
**Requirements:**  
- Use `IN` with a subquery using `LIMIT` (if supported)

select name,marks from student where marks in (select distinct(marks) from student limit 2);

### ⚡ Task 5: Subquery with IN  
**Question:** Find students whose marks match with any marks from a sublist of scores above 80.  
**Requirements:**  
- Use `IN (SELECT marks FROM students WHERE marks > 80)`

select name from student where marks in(select marks from student where marks > 80);

### ⚡ Task 6: Subquery in FROM  
**Question:** Get the average marks using a subquery inside the `FROM` clause.  
**Requirements:**  
- Use: `SELECT avg_score FROM (SELECT AVG(marks) AS avg_score FROM students) AS avg_table;`

select name,marks from student where marks =(select avg(marks) from student);

### ⚡ Task 7: Use Subquery in SELECT  
**Question:** Show each student name and the total marks (from subquery) next to it.  
**Requirements:**  
- Subquery used in the `SELECT` line

select name,marks from student where marks in(select sum(marks) from student);

### ⚡ Task 8: Correlated Subquery  
**Question:** Find students whose marks are higher than any other student in the same table.  
**Requirements:**  
- Use a correlated subquery (self-reference)

select name ,marks from student where marks = (select max(marks) from student);

### ⚡ Task 9: Subquery with HAVING  
**Question:** Show average marks for students grouped by a condition, only if the average is more than the overall average.  
**Requirements:**  
- Use `HAVING AVG(marks) > (SELECT AVG(marks) FROM students)`

SELECT city, AVG(marks) AS avg_marks
FROM students
GROUP BY city
HAVING AVG(marks) > (SELECT AVG(marks) FROM students);


### ⚡ Task 10: Insert & Test with Subquery  
**Question:** Insert a new student `(6, 'Zoya', 88)`, then find students who scored more than Zoya.  
**Requirements:**  
- Use subquery: `(SELECT marks FROM students WHERE name = 'Zoya')`

---
INSERT INTO students (id, name, marks)
VALUES (6, 'Zoya', 88);

select name ,marks from student where marks >
(select marks from student where name ='zoya' order by id desc limit 1 );



**End of Document** ✨















































