### DAY ☀️: **Task – Filtering Data in SQL**


### ⚡ Task 1: Filter by City  
**Question:** Show all students from the city `Delhi`.  
**Requirements:**  
- Use `WHERE city = 'Delhi'`  
- Table: `students` 

select *from students where city ='Delhi';





### ⚡ Task 2: Filter by Age  
**Question:** Display students who are 20 years old.  
**Requirements:**  
- Use equality condition on `age`  


select *from students where age =20;

## ⚡ Task 3: Filter with NOT EQUAL  
**Question:** Show students who are **not** from `Mumbai`.  
**Requirements:**  
- Use `!=` or `<>` operator  



select *from students where city <> 'Mumbai';


### ⚡ Task 4: Filter with Greater Than  
**Question:** List students who are older than 18.  
**Requirements:**  
- Use `>` operator  


select *from students where age > 18;

### ⚡ Task 5: Filter with Less Than  
**Question:** Show students who are younger than 20.  
**Requirements:**  
- Use `<` operator  



select *from students where age < 20;


### ⚡ Task 6: Filter with AND  
**Question:** Show students from `Delhi` who are 20 years old.  
**Requirements:**  
- Use `AND` in `WHERE` clause  


select *from students where city = 'delhi' and age = 20;

## ⚡ Task 7: Filter with OR  
**Question:** Show students who are from `Delhi` or `Chennai`.  
**Requirements:**  
- Use `OR` operator  


select * from students 
where city = 'Delhi' or city = 'Chennai';



### ⚡ Task 8: Filter Using NOT  
**Question:** Show all students **not** from `Delhi`.  
**Requirements:**  
- Use `NOT` with `=`  


select * from students 
where not city = 'Delhi';





### ⚡ Task 9: Filter with Text Condition  
**Question:** Show students whose name is `Priya`.  
**Requirements:**  
- Use `WHERE name = 'Priya'`  


select *from students where name ='Priya';


## ⚡ Task 10: Filter After Inserting New Record  
**Question:** Insert a student `(6, 'Sonal', 22, 'Pune')`, then filter all students from `Pune`.  
**Requirements:**  
- Perform `INSERT` followed by `SELECT` with `WHERE`  

INSERT INTO students (id, name, age, city)
VALUES (6, 'Sonal', 22, 'Pune');


SELECT * FROM students
WHERE city = 'Pune';





















































































































