### DAY ☀️: **Task – Updating Data in SQL**  


### ⚡ Task 1: Update City  
**Question:** Change the city of student `Rahul` to `Bangalore`.  
**Requirements:**  
- Use `UPDATE` and `WHERE`  
- Table: `students` 

update student
set city = 'Banglore'
where name = 'Rahul';


## ⚡ Task 2: Update Age  
**Question:** Increase the age of student `Anjali` to `19`.  
**Requirements:**  
- Modify only one column  

update student
set age = 19
where name = 'anjali';

### ⚡ Task 3: Update Multiple Columns  
**Question:** Update `Priya`'s age to `21` and city to `Hyderabad`.  
**Requirements:**  
- Use `SET` to update more than one column  

update student
set age = 21 ,city = 'hyderabad'
where name = 'priya';

### ⚡ Task 4: Update by ID  
**Question:** Change the city of student with ID = 3 to `Kolkata`.  
**Requirements:**  
Use condition on `id`  

update student
set city ='kolkata'
where id = 3;

### ⚡ Task 5: Update All Rows (With Caution)  
**Question:** Set the age of all students to `20`.  
**Requirements:**  
- Use without `WHERE` for learning purpose only  

update student
set age = 20;

### ⚡ Task 6: Update Based on City  
**Question:** Change all students from `Delhi` to `Noida`.  
**Requirements:**  
- Use `WHERE city = 'Delhi'`  

update student
set city = 'Noida'
where city = 'Delhi';


### ⚡ Task 7: Update Using Logical Operator  
**Question:** Update city to `Indore` where age > 18 AND city = 'Mumbai'.  
**Requirements:**  
- Use `AND` in `WHERE`  

update student
set city ='indore'
where age > 18 and city = 'mumbai';

### ⚡ Task 8: Update With String in Condition  
**Question:** Change name `Neha` to `Sneha`.  
**Requirements:**  
- Use string values with quotes  

update student
set name = 'sneha'
where name 'neha'

### ⚡ Task 9: Update With LIKE  
**Question:** Update city to `Nashik` for all students whose name starts with 'R'.  
**Requirements:**  
- Use `LIKE 'R%'`  

update student
set city = 'nashik'
where name like 'r%';

### ⚡ Task 10: Update After Inserting New Row  
**Question:** Insert a new student `(6, 'Sonal', 20, 'Agra')` and then update her city to `Kanpur`.  
**Requirements:**  
- Perform `INSERT` followed by `UPDATE`  


Insert the new student
INSERT INTO students (id, name, age, city)
VALUES (6, 'Sonal', 20, 'Agra');


UPDATE students
SET city = 'Kanpur'
WHERE id = 6;

**End of Document** ✨















































