### DAY ☀️: **Task – Joins in SQL**


### ⚡ Task 1: INNER JOIN  
**Question:** Show student names and their class names using INNER JOIN.  
**Requirements:**  
- Only show students whose `class_id` matches a class 


SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
INNER JOIN 
    classes
ON 
    students.class_id = classes.class_id;


### ⚡ Task 2: LEFT JOIN  
**Question:** Display all student names, and their class names (if available).  
**Requirements:**  
- Use `LEFT JOIN` to include students without class match  


SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
LEFT JOIN 
    classes
ON 
    students.class_id = classes.class_id;



### ⚡ Task 3: RIGHT JOIN  
**Question:** Show all class names and the student names who belong to them.  
**Requirements:**  
- Use `RIGHT JOIN` to include all classes even if no students  


SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
RIGHT JOIN 
    classes
ON 
    students.class_id = classes.class_id;

### ⚡ Task 4: FULL JOIN  
**Question:** Show all students and all classes, matched or not.  
**Requirements:**  
- Use `FULL JOIN` (if supported)  


SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
FULL JOIN 
    classes
ON 
    students.class_id = classes.class_id;


### ⚡ Task 5: CROSS JOIN  
**Question:** Show all combinations of students and class names.  
**Requirements:**  
- Use `CROSS JOIN`  

SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
CROSS JOIN 
    classes;


### ⚡ Task 6: JOIN with WHERE  
**Question:** Use INNER JOIN and display students from class `'Commerce'`.  
**Requirements:**  
- Use `WHERE class_name = 'Commerce'`  



SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
INNER JOIN 
    classes
ON 
    students.class_id = classes.class_id
WHERE 
    classes.class_name = 'Commerce';


### ⚡ Task 7: Join with Aliases  
**Question:** Use aliases `s` and `c` for `students` and `classes`, and display joined result.  
**Requirements:**  
- Use `AS` for aliasing  


SELECT 
    s.student_name,
    c.class_name
FROM 
    students AS s
INNER JOIN 
    classes AS c
ON 
    s.class_id = c.class_id;



### ⚡ Task 8: Join and Sort  
**Question:** Display students with class names, sorted by class name.  
**Requirements:**  
- Use `INNER JOIN`  
- Use `ORDER BY class_name`  




SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
INNER JOIN 
    classes
ON 
    students.class_id = classes.class_id
ORDER BY 
    classes.class_name;


### ⚡ Task 9: Insert Non-matching Class  
**Question:** Insert a student with a `class_id` not present in `classes`, and test the effect on JOINs.  
**Requirements:**  
- Observe difference between INNER and LEFT JOIN  

INSERT INTO students (student_id, student_name, class_id)
VALUES (10, 'Ravi', 999);

SELECT 
    students.student_name,
    classes.class_name
FROM 
    students
INNER JOIN 
    classes
ON 
    students.class_id = classes.class_id;




### ⚡ Task 10: JOIN and COUNT  
**Question:** Count how many students are in each class using JOIN and GROUP BY.  
**Requirements:**  
- Use `INNER JOIN`, `GROUP BY`, and `COUNT(*)`




SELECT 
    classes.class_name,
    COUNT(*) AS student_count
FROM 
    students
INNER JOIN 
    classes
ON 
    students.class_id = classes.class_id
GROUP BY 
    classes.class_name;


























































































































