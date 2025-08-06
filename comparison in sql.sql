### DAY ☀️: **Task – Comparison Operators in SQL**


### ⚡ Task 1: Use `=` Operator  
**Question:** Show students whose city is `Delhi`.  
**Requirements:**  
- Use `WHERE city = 'Delhi'`  

select name from store where city ='Delhi';


### ⚡ Task 2: Use `!=` Operator  
**Question:** Display students who are **not** from `Mumbai`.  
**Requirements:**  
- Use `WHERE city != 'Mumbai'`  


select name from store where city !='Mumbai';



### ⚡ Task 3: Use `>` Operator  
**Question:** Show students whose age is greater than 19.  
**Requirements:**  
- Use `WHERE age > 19` 

select age from students where age > 19;



### ⚡ Task 4: Use `<` Operator  
**Question:** Show students whose age is less than 20.  
**Requirements:**  
- Use `WHERE age < 20`  


select age from students where age < 20;

### ⚡ Task 5: Use `>=` Operator  
**Question:** Show students who are 20 years old or older.  
**Requirements:**  
- Use `WHERE age >= 20`



select *from students where age >=20;




### ⚡ Task 6: Use `<=` Operator  
**Question:** Show students who are 18 years or younger.  
**Requirements:**  
- Use `WHERE age <= 18`  


select *from students where age<=18;


### ⚡ Task 7: Combine `>` and `<`  
**Question:** Show students aged **between 18 and 21** using `>` and `<`.  
**Requirements:**  
- Use `WHERE age > 18 AND age < 21`  



select *from students where age > 18 and age < 21;


### ⚡ Task 8: Use `<>` Operator  
**Question:** Show students not from `Chennai` using `<>`.  
**Requirements:**  
- Use `WHERE city <> 'Chennai'`



select * from store where city <> 'Chennai';



### ⚡ Task 9: Combine `=` and `!=`  
**Question:** Show students whose age is 20 and city is not `Mumbai`.  
**Requirements:**  
- Use `WHERE age = 20 AND city != 'Mumbai'`  


select *from students where age =20 and  city != 'Mumbai';


### ⚡ Task 10: Compare by ID  
**Question:** Show students with ID greater than 2.  
**Requirements:**  
- Use `WHERE id > 2`  



select *from store where student_id > 2;











