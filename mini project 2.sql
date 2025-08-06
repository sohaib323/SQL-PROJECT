--### ✅ **SQL Task Questions (20 Tasks)**

---

---### ⚡ Task 1  **Question:** Delete students who scored less than 50 in any subject.

delete from store where student_id in(select student_id from marks where marks < 50);


--- ### ⚡ Task 2  **Question:** Show all students who belong to the city ‘Delhi’.

select name from store where city in('Delhi');

--### ⚡ Task 3  **Question:** Display all students who scored more than 80 in any subject.

select distinct store.name,marks.marks as score from store
inner join marks on
marks.student_id=store.student_id 
where marks.marks > 80;


--### ⚡ Task 4  
--**Question:** List all students from Mumbai who scored more than 70.


select store.name,store.city ,marks.marks from store 
join marks on
marks.student_id=store.student_id
where marks.marks > 70 and store.city ='Mumbai';

---### ⚡ Task 5  **Question:** Display students who are from Pune or scored above 75.

select store.name,store.city,marks.marks from store
join marks on
store.student_id=marks.student_id
where store.city = 'Pune' and marks.marks> 75;


--- ### ⚡ Task 6  
**Question:** List all students sorted by their marks in descending order.

---
select store.name,marks.marks from store
inner join marks on
marks.student_id=store.student_id
order by marks.marks desc;

### ⚡ Task 7  
**Question:** Show the top 3 students based on their highest marks.

select store.name ,marks.marks from store
inner join marks on
store.student_id=marks.student_id
order by marks.marks desc limit 3;


--- ### ⚡ Task 8  
**Question:** Display distinct subjects present in the `marks` table.



select distinct subject from marks;



### ⚡ Task 9  
**Question:** Show student names with alias as `Student_Name` and city as `Location`.

---
select name as student_name ,city as Location from store;


### ⚡ Task 10  
**Question:** Use alias to rename the column `marks` as `Score` in th

select marks as score from marks;


### ⚡ Task 11  
**Question:** Display the average marks scored by each student.


select student_id,avg(marks) as average_marks from marks group by student_id;

---### ⚡ Task 12  
**Question:** Count the number of subjects each student has appeared in.


SELECT student_id, COUNT(student_id) AS subject_count
FROM enrollments
GROUP BY student_id;



### ⚡ Task 13  
**Question:** Show the maximum marks scored per subject.


select max(marks) ,student_id from marks group by student_id;


### ⚡ Task 14  
**Question:** Show the minimum marks scored per subject.


select min(marks) from marks group by student_id;



### ⚡ Task 15  
**Question:** Display the number of students from each city.

select count(student_id) ,city from store group by city;


### ⚡ Task 16  
**Question:** Show students who scored between 70 and 90 in any subject.


select store.name,marks.marks from store
inner join marks on
marks.student_id=store.student_id
where marks.marks between 70 and 90;



### ⚡ Task 17  
**Question:** List students who scored 85 or are from Chennai.

select store.name ,marks.marks from store
inner join marks on
marks.student_id= store.student_id
where marks.marks = 85 or store.city = 'Chennai';



---- ### ⚡ Task 18  
**Question:** Display all students whose names start with the letter ‘R’.

selecT *from store where name like 'R%';

### ⚡ Task 19  
**Question:** Show average marks of students from ‘Delhi’ only


select store.name,avg(marks.marks) as average_marks from store 
join marks on
marks.student_id= store.student_id
where store.city = 'Delhi'
group by store.name;


### ⚡ Task 20  
**Question:** Show each student’s total marks and group the data by student.

select sum(marks.marks),student_id as student from marks
group by student_id;


**End of Document** ✨ bye bye 

























