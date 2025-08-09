### DAY ☀️: **Task – `IN` Operator in SQL**

### ⚡ Task 1: Filter by City  
**Question:** Show names of students who live in **Delhi** or **Pune**.  
**Requirements:**  
- Use `WHERE city IN ('Delhi', 'Pune')`

select name from students where city in('Delhi','Pune');

## ⚡ Task 2: Filter by Multiple IDs  
**Question:** Show student names whose IDs are 1, 3, or 5.  
**Requirements:**  
- Use `IN (1, 3, 5)`

select name from students where student_id in(1,3,5);

### ⚡ Task 3: Use NOT IN  
**Question:** Show names of students not from **Mumbai** or **Chennai**.  
**Requirements:**  
- Use `NOT IN ('Mumbai', 'Chennai')`

select name from students where city not in('Mumbai','Chennai');

### ⚡ Task 4: Use IN with Numbers  
**Question:** Create a `marks` column and show students who scored 75, 90, or 82.  
**Requirements:**  
- Use `IN (75, 90, 82)` on `marks`


select name from students where marks in(75,90,82);


### ⚡ Task 5: Subquery with IN  
**Question:** Show students whose `city` appears in another table named `cities(city_name)`.  
**Requirements:**  
- Use subquery inside `IN`



SELECT * FROM students
WHERE city IN (SELECT city_name FROM cities);


### ⚡ Task 6: Replace OR with IN  
**Question:** Rewrite this using `IN`:  
```sql
SELECT * FROM students  
WHERE city = 'Delhi' OR city = 'Mumbai';
```



SELECT * FROM students
WHERE city IN ('Delhi', 'Mumbai');



### ⚡ Task 7: Filter Using IN with LIKE  
**Question:** Show students whose name starts with `'P'` or `'R'`.  
**Requirements:**  
- Use `WHERE LEFT(name, 1) IN ('P', 'R')`


SELECT * FROM students
WHERE LEFT(name, 1) IN ('P', 'R');


### ⚡ Task 8: Use IN in DELETE  
**Question:** Delete students whose city is `'Chennai'` or `'Pune'`.  
**Requirements:**  
- Use `DELETE` with `IN`

delete from students where city in('Chennai','Pune');

### ⚡ Task 9: Use IN in UPDATE  
**Question:** Update marks to 100 for students whose city is in `'Delhi', 'Mumbai'`.  
**Requirements:**  
- Use `UPDATE` with `IN`


update students
set marks = 100
where city in ('Delhi','Mumbai');


### ⚡ Task 10: IN with ORDER BY  
**Question:** Show student names from `'Delhi', 'Mumbai'`, ordered by `name`.  
**Requirements:**  
- Use `IN` and `ORDER BY name ASC`



select name from students where city in('Delhi','Mumbai') order by name;

































