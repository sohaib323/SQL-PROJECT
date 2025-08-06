## DAY ☀️: **Task – `BETWEEN` in SQL**  

### ⚡ Task 1: Filter Marks Between Range  
**Question:** Show students who scored marks **between 70 and 90**.  
**Requirements:**  
- Use `BETWEEN`  
- Table: `students`  


select s.name ,m.marks from store s
join marks m on
m.student_id=s.student_id 
where m.marks between 70 and 90;

### ⚡ Task 2: Filter Marks Outside Range  
**Question:** Show students whose marks are **not between 70 and 90**.  
**Requirements:**  
- Use `NOT BETWEEN`  


select s.name ,m.marks from store s
join marks m on
m.student_id=s.student_id 
where m.marks not between 70 and 90;


### ⚡ Task 3: Filter Using Exact Match in Range  
**Question:** Use `BETWEEN` to include students who scored exactly **85 or 90**.  
**Requirements:**  
- Verify inclusive nature of `BETWEEN`  


select s.name ,m.marks from store s
join marks m on
m.student_id=s.student_id 
where m.marks between 85 and 90;





### ⚡ Task 4: Use BETWEEN with Text  
**Question:** Create a table `books(title)` and use `BETWEEN` to find books from `'A'` to `'M'`.  
**Requirements:**  
- Works with alphabetical range  

select title from books where title between 'a' and 'm';


### ⚡ Task 5: Use BETWEEN with Dates  
**Question:** Create a table `attendance(date)` and filter dates between `'2024-01-01'` and `'2024-12-31'`.  
**Requirements:**  
- Test `BETWEEN` on `DATE` type 



select date
from attendance
where date between '2024-01-01' and '2024-12-31';




### ⚡ Task 6: Combine BETWEEN with AND  
**Question:** Show students who scored **between 70 and 90** and whose names start with 'R'.  
**Requirements:**  
- Use `BETWEEN` and `LIKE` together  



select s.name,m.marks from store s
join marks m on
m.student_id=s.student_id
where s.name like 'R%';




### ⚡ Task 7: Use BETWEEN with Greater Condition  
**Question:** Show students who scored **between 70 and 90**, but only if ID > 2.  
**Requirements:**  
- Use `BETWEEN` and `>`  




select s.name ,m.student_id ,m.marks from store s
join marks m on
m.student_id=s.student_id
where m.marks between 70 and 90 and m.student_id >2;


### ⚡ Task 8: Check Inclusiveness  
**Question:** Insert a student with 70 marks and one with 90 marks, and test if both appear in `BETWEEN 70 AND 90`.  
**Requirements:**  
- Prove inclusiveness of `BETWEEN`  

select marks from marks where marks between 70 and 90;




### ⚡ Task 9: Use BETWEEN on ID Range  
**Question:** Show students whose `id` is between 2 and 4.  
**Requirements:**  
- Use `BETWEEN` on a numeric ID field  


select student_id from marks where student_id between 2 and 4;



### ⚡ Task 10: Test NOT BETWEEN with Multiple Conditions  
**Question:** Show students **not** between marks 60 and 85 **and** from city `Delhi`.  
**Requirements:**  
- Use `NOT BETWEEN` with `AND` 



select s.city ,m.marks from store s
join marks m on
m.student_id=s.student_id
where m.marks between 60 and 85 and s.city = 'Delhi';










