### DAY ☀️: **Task – Deleting Data in SQL**  



### ⚡ Task 1: Delete by Name  
**Question:** Remove the student whose name is `Rahul`.  
**Requirements:**  
- Use `DELETE` with `WHERE`  
- Table: `students`


delete from students where name ='Rahul';


### ⚡ Task 2: Delete by ID  
**Question:** Delete the student with ID = 3.  
**Requirements:**  
- Filter using the `id` column  


delete from sections where student_id = 3

### ⚡ Task 3: Delete by City  
**Question:** Remove all students from the city `Chennai`.  
**Requirements:**  
- Use city condition in `WHERE` 



delete from students where city ='Chennai';


### ⚡ Task 4: Delete All Data (With Caution)  
**Question:** Remove all data from the `students` table.  
**Requirements:**  
- Use `DELETE` without `WHERE`  
- Use only for learning, not in real applications  


delete from students;



### ⚡ Task 5: Delete Based on Age  
**Question:** Delete students who are younger than 19 years.  
**Requirements:**  
- Use comparison operator `<`  


delete from students where age <19;



### ⚡ Task 6: Delete Using Logical Operator  
**Question:** Delete students from `Mumbai` who are 20 years old.  
**Requirements:**  
- Use `AND` in the condition  


delete from stduents where city ='Mumbai' and age = 20;



### ⚡ Task 7: Delete by LIKE  
**Question:** Delete all students whose names start with 'P'.  
**Requirements:**  
- Use `LIKE 'P%'


delete from students where name like 'P%';


### ⚡ Task 8: Delete with IN  
**Question:** Delete students whose cities are either `Delhi` or `Kolkata`.  
**Requirements:**  
- Use `IN ('Delhi', 'Kolkata')`  

delete from students where city in ('delhi' or 'kolkata');


### ⚡ Task 9: Delete Using NOT  
**Question:** Delete all students who are **not** from `Delhi`.  
**Requirements:**  
- Use `NOT` in `WHERE`  


delete from students where city not in ('Delhi');



### ⚡ Task 10: Delete After Insert  
**Question:** Insert a student `(6, 'Sneha', 22, 'Bhopal')` and then delete her record.  
**Requirements:**  
- Perform both `INSERT` and `DELETE` 


insert into students (id,name,age,city) values(6,'sneha',22,'Bhopal')
delete from students where name ='sneha';


























































































































































