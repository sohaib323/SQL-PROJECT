### DAY ☀️: **Task – `LIKE` in SQL**

### ⚡ Task 1: Find Names Starting with 'R'  
**Question:** Show all students whose names start with the letter 'R'.  
**Requirements:**  
- Use `LIKE 'R%'`  

select *from student where name like 'R%';


### ⚡ Task 2: Find Names Ending with 'a'  
**Question:** Show students whose names end with the letter 'a'.  
**Requirements:**  
- Use `LIKE '%a'`  

SELECT *FROM STUDENTS WHERE NAME LIKE '%A';

## ⚡ Task 3: Find Names Containing 'a'  
**Question:** Show students whose names contain the letter 'a' anywhere.  
**Requirements:**  
- Use `LIKE '%a%'`  

SELECT *FROM STUDENTS WHERE NAME LIKE '%A%';


### ⚡ Task 4: Find 5-Letter Names  
**Question:** Display students whose names are exactly 5 letters long.  
**Requirements:**  
- Use `LIKE '_____'`  


SELECT *FROM STUDENTS WHERE NAME LIKE '_____';



### ⚡ Task 5: Use `_` Wildcard  
**Question:** Show students whose names have 'a' as the second character.  
**Requirements:**  
- Use `LIKE '_a%'`  

SELECT *FROM STUDENTS WHERE NAME LIKE '_a%';



### ⚡ Task 6: Use LIKE with City  
**Question:** Show students whose city starts with 'D'.  
**Requirements:**  
- Use `LIKE 'D%'` on `city` column  

---

select *from students where city like 'D%';

### ⚡ Task 7: Use NOT LIKE  
**Question:** Show students whose names **do not** start with 'R'.  
**Requirements:**  
- Use `NOT LIKE 'R%'`  


SELECT *FROM STUDENTS WHERE NAME NOT LIKE 'R%';


### ⚡ Task 8: Combine LIKE with AND  
**Question:** Show students whose names start with 'R' and city is `Delhi`.  
**Requirements:**  
- Use `LIKE` and `AND` together  


SELECT *FROM STUDENTS WHERE NAME LIKE 'R%' AND CITY ='Delhi';

### ⚡ Task 9: Match Names with ‘i’ as Third Letter  
**Question:** Show students whose third letter in the name is ‘i’.  
**Requirements:**  
- Use `LIKE '__i%'`  

select *from students where name like '__i%';

### ⚡ Task 10: Insert and Match  
**Question:** Insert a student `'Rakesh'` from `'Ranchi'` and find all names starting with `Ra`.  
**Requirements:**  
- Use `LIKE 'Ra%'` after inserting data  

---

INSERT INTO students (id, name, age, city)
VALUES (14, 'Rakesh', 22, 'Ranchi');





SELECT name
FROM students
WHERE name LIKE 'Ra%';






































































































