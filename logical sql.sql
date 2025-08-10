### DAY ☀️: **Task – Logical Operators (AND, OR, NOT) in SQL**


### ⚡ Task 1: Use AND Operator  
**Question:** Show students who are from `Delhi` **and** age is greater than `18`.  
**Requirements:**  
- Use `AND` in the `WHERE` claus

select *from students where city= 'Delhi' and age > 18;


### ⚡ Task 2: Use OR Operator  
**Question:** Display students who are from `Delhi` **or** `Mumbai`.  
**Requirements:**  
- Use `OR` to combine city conditions

select *from students where city ='Delhi' or city = 'Mumbai';

 Task 3: Use NOT Operator  
**Question:** Show students **not** from `Delhi`.  
**Requirements:**  
- Use `NOT` with city condition  


select *from students where not city ='Delhi';


### ⚡ Task 4: Combine AND and OR  
**Question:** Show students from `Delhi` and age is 18, or students from `Mumbai`.  
**Requirements:**  
- Use both `AND` and `OR` together  
- Use parentheses `()` for correct logic  


select *from students where city ='Mumbai' and age > 18;

## ⚡ Task 5: Use NOT with AND  
**Question:** Display students **not** from `Delhi` **and** who are older than `18`.  
**Requirements:**  
- Combine `NOT` and `AND`  


select *from students where not city= 'Delhi' and age = 18;


### ⚡ Task 6: Filter with NOT and Comparison  
**Question:** Show students **not** aged 20.  
**Requirements:**  
- Use `NOT age = 20` or `age != 20`  


select *from students where not age = 20;

## ⚡ Task 7: Combine All Three Operators  
**Question:** Show students from `Chennai` **or** age is 18 **but not** from `Delhi`.  
**Requirements:**  
- Use `OR` and `NOT` together


select *from students where not city ='Delhi' or age =18;


### ⚡ Task 8: Use OR with Multiple Conditions  
**Question:** Show students whose age is 18 **or** 22.  
**Requirements:**  
- Use `OR` on `age = 18 OR age = 22`  


select *from students where age = 18 or age = 22;




### ⚡ Task 9: Use AND on Text & Number  
**Question:** Show students where name is `'Priya'` **and** age is 19.  
**Requirements:**  
- Combine text and numeric conditions  


select *from students where name = 'Priya' and age = 19;




### ⚡ Task 10: Complex Filtering  
**Question:** Show students who are **not from Delhi**, and are aged between 18 and 22.  
**Requirements:**  
- Use `NOT`, `AND`, and comparison operators in one query 

select *from students where not city ='Delhi' and age between 18 and 22;




































































