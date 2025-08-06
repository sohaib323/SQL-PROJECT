### ⚡ Task 1: Alias for a Column  
**Question:** Show student `name` as `Student_Name` and `city` as `Location`.  
**Requirements:**  
- Use `AS` keyword  
- Table: `students`


select name as student_name ,city as Location from store;




### ⚡ Task 2: Alias for Marks  
**Question:** Display `marks` column as `Total_Marks`.  
**Requirements:**  
- Use `AS` to rename column in result


select marks as Total_Marks from marks;



### ⚡ Task 3: Alias Without AS  
**Question:** Show student `name` as `Student` without using the `AS` keyword.  
**Requirements:**  
- Avoid using `AS`, still apply alias



select name student from store;


### ⚡ Task 4: Multiple Column Aliases  
**Question:** Show name, city, and marks with aliases: `Student`, `City_Name`, `Score`.  
**Requirements:**  
- Use `AS` for each column



select store.name as student ,store.city as city_name , marks.marks as score from store 
inner join marks on
marks.student_id=store.student_id
;


### ⚡ Task 5: Table Alias for Shorter Query  
**Question:** Use `s` as alias for `students` table and select `s.name`, `s.marks`.  
**Requirements:**  
- Alias table in the `FROM` clause


select s.name,m.marks from store s
join marks m on
m.student_id=s.student_id;


### ⚡ Task 6: Combine Table and Column Aliases  
**Question:** Use `s` for table and alias columns as `Name`, `Marks_Scored`.  
**Requirements:**  
- Apply both table alias and column alias

select s.name as Name ,m.marks as Marks_scored from store s
join marks m on
s.student_id=m.student_id;



### ⚡ Task 7: Use Alias with WHERE  
**Question:** Use table alias `s`, and filter students from `Delhi`, display `name` as `Student_Name`.  
**Requirements:**  
- Combine `AS`, `WHERE`, and table alias


select s.name as Student_Name ,s.city from store s where city ='Delhi';


### ⚡ Task 8: Use Alias in ORDER BY  
**Question:** Show student names and marks as `Name`, `Score`, and sort by `Score`.  
**Requirements:**  
- Alias column and sort using the alias


select s.name as Name ,m.marks as Score from store s
join marks m on
m.student_id=s.student_id
order by m.marks ;

### ⚡ Task 9: Insert & Alias  
**Question:** Insert a new student `(5, 'Riya', 'Pune', 77)` and display her record with column aliases.  
**Requirements:**  
- Perform `INSERT`, then use `SELECT` with `AS`


select name as student_name ,city as Location from store;




### ⚡ Task 10: Grouped Output with Alias  
**Question:** Group by `city` and show average `marks` as `Average_Marks`.  
**Requirements:**  
- Use `AS` with aggregate function


select s.city ,avg(m.marks) as Average_marks from store s
join marks m on
s.student_id=m.student_id
group by s.city;











