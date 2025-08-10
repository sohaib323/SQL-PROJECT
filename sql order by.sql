### DAY ☀️: **Task – Sorting Data in SQL**

### ⚡ Task 1: Sort by Age (Ascending)  
**Question:** Display all students sorted by their age from youngest to oldest.  
**Requirements:**  
- Use `ORDER BY age ASC`  

select *from student order by age;

### ⚡ Task 2: Sort by Name (Descending)  
**Question:** Show all students in reverse alphabetical order by their name.  
**Requirements:**  
- Use `ORDER BY name DESC`  

select *from student order by name desc;

### ⚡ Task 3: Sort by City (Ascending)  
**Question:** Display students sorted by city names A to Z.  
**Requirements:**  
- Use `ORDER BY city`  
select *from student order by city ;
---

### ⚡ Task 4: Sort by Age then Name  
**Question:** Show all students sorted first by age, then by name (both ascending).  
**Requirements:**  
- Use `ORDER BY age, name`  

select *from students order by age,name;

### ⚡ Task 5: Sort by Age (Descending)  
**Question:** Show students sorted from oldest to youngest.  
**Requirements:**  
- Use `ORDER BY age DESC`  

select *from student order by age desc; 

### ⚡ Task 6: Sort by City and Age  
**Question:** Display students sorted by city (A–Z), and within the same city by age (smallest to largest).  
**Requirements:**  
- Use `ORDER BY city ASC, age ASC`  

select *from student order by city ,age asc;

### ⚡ Task 7: Sort with LIMIT  
**Question:** Show only the top 3 oldest students.  
**Requirements:**  
- Use `ORDER BY age DESC LIMIT 3`  

select *from student order by age desc limit 3;

### ⚡ Task 8: Sort by Name Length  
**Question:** Sort students by length of their name.  
**Requirements:**  
- Use `ORDER BY LENGTH(name)` *(MySQL specific)*  

select *from student order by length(name);

### ⚡ Task 9: Insert & Sort  
**Question:** Insert a new student `'Zoya'` aged `21`, from `'Agra'`, then sort all students by name.  
**Requirements:**  
- Perform `INSERT`, then use `ORDER BY name`  

INSERT INTO students (name, age, city) VALUES
('Zoya', 21, 'Agra');

SELECT *
FROM students
ORDER BY name ASC;




### ⚡ Task 10: Sort by City (Descending) and Age (Ascending)  
**Question:** Sort students by city Z–A, then by age low to high.  
**Requirements:**  
- Use `ORDER BY city DESC, age ASC`  

select *from students order by city desc ,age asc;
**End of Document** ✨
















































