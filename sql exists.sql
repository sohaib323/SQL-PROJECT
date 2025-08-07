### DAY ☀️: **Task – `EXISTS` in SQL**


### ⚡ Task 1: Use EXISTS to Match Classes  
**Question:** Show all student names whose `class_id` exists in the `classes` table.  
**Requirements:**  
- Use `WHERE EXISTS`  
- Match `students.class_id = classes.class_id`

select name from students where exists (select *from sections where students.class_id=sections.class_id);


### ⚡ Task 2: Use NOT EXISTS  
**Question:** Show student names whose class does **not** exist in the `classes` table.  
**Requirements:**  
- Use `WHERE NOT EXISTS`


select name from students where not exists(select *from sections where students.class_id=sections.class_id);


### ⚡ Task 3: Insert Unmatched Class  
**Question:** Insert a new student with a `class_id` not in the `classes` table, and test `EXISTS`.  
**Requirements:**  
- Insert `(4, 'Neha', 105)`  
- Use `EXISTS` to verify match fails 



insert into students (id, name, class_id) values (4, 'neha', 105);


select name from students where exists (select * from classes where students.class_id = classes.class_id);


### ⚡ Task 4: Use EXISTS with SELECT *  
**Question:** Show full student details only if their class exists.  
**Requirements:**  
- Use `SELECT *` with `EXISTS`



select *from students where exists (select *fom sections where students.class_id=sections.class_id);

## ⚡ Task 5: EXISTS with JOIN Comparison  
**Question:** Run the same logic using `JOIN` and compare result with `EXISTS`.  
**Requirements:**  
- Use `INNER JOIN`  
- Compare with `EXISTS` output  


select name from students where exists (select * from classes 
    where students.class_id = classes.class_id
);
select students.name 
from students 
inner join classes 
on students.class_id = classes.class_id;


### ⚡ Task 6: EXISTS in Nested Condition  
**Question:** Find students with class name `'Science'` using nested subquery with EXISTS.  
**Requirements:**  
- Use subquery inside EXISTS to match `class_name = 'Science'`


select name from students where exists (select * from classes where students.class_id = classes.class_id 
and exists (
select * 
from classes as c 
where c.class_id = classes.class_id 
and c.class_name = 'science'
    )
);

### ⚡ Task 7: EXISTS in DELETE  
**Question:** Delete students whose `class_id` does not exist in the `classes` table.  
**Requirements:**  
- Use `DELETE ... WHERE NOT EXISTS`



delete from students where not exists (select * from classes 
    where students.class_id = classes.class_id
);


### ⚡ Task 8: EXISTS in Complex Filtering  
**Question:** Show students who belong to a class and whose name starts with `'A'`.  
**Requirements:**  
- Combine `EXISTS` with `LIKE 'A%'`

select name 
from students 
where name like 'a%' 
and exists (
    select * 
    from classes 
    where students.class_id = classes.class_id
);


### ⚡ Task 9: EXISTS with COUNT  
**Question:** Count how many students have a valid class using EXISTS.  
**Requirements:**  
- Use `SELECT COUNT(*)` with `EXISTS`



select count(*) from students where exists (select *from sections where students.class_id=sections.class_id);



### ⚡ Task 10: Use EXISTS in Real-World Logic  
**Question:** Create a table `assignments(student_id, title)` and show students only if they have at least one assignment.  
**Requirements:**  
- Use `EXISTS` to filter `students` based on matching `student_id` in `assignments`



create table assignments (
    student_id int,
    title varchar(100)
);
select name 
from students 
where exists (
    select * 
    from assignments 
    where students.id = assignments.student_id
);



























































































































