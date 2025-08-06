### DAY ☀️: **Task – Creating Tables in SQL**


### ⚡ Task 1: Create a Basic Student Table  
**Question:** Create a table `students` with columns for ID, Name, and Age.  
**Requirements:**  
- `id` (integer)  
- `name` (text)  
- `age` (integer)

create table students(
id int,
name varchar(100),
age int
);


### ⚡ Task 2: Add City and Gender Columns  
**Question:** Modify the `students` table to also include `city` and `gender`.  
**Requirements:**  
- `city` (text)  
- `gender` (text)

alter table students add column city varchar(100),add column gender varchar(150);


### ⚡ Task 3: Create a Departments Table  
**Question:** Create a `departments` table with department ID and name.  
**Requirements:**  
- `dept_id` (integer, primary key)  
- `dept_name` (text)

create table departments (
  dept_id integer primary key,
  dept_name text
);


### ⚡ Task 4: Create a Courses Table  
**Question:** Create a `courses` table linked to `departments`.  
**Requirements:**  
- `course_id` (integer, primary key)  
- `course_name` (text)  
- `dept_id` (foreign key)


create table courses (
  course_id integer primary key,
  course_name varchar(200,
  dept_id integer,
  foreign key (dept_id) references departments(dept_id)
);

### ⚡ Task 5: Create an Enrollments Table  
**Question:** Create an `enrollments` table that links students with courses and stores their marks.  
**Requirements:**  
- `enroll_id` (integer, primary key)  
- `student_id` (foreign key)  
- `course_id` (foreign key)  
- `marks` (integer)


create table enrollments (
  enroll_id integer primary key,
  student_id integer,
  course_id integer,
  marks integer,
  foreign key (student_id) references students(student_id),
  foreign key (course_id) references courses(course_id)
);

### ⚡ Task 6: Create a Table with Default Value  
**Question:** Create a `fees` table with default value for `status` column.  
**Requirements:**  
- `fee_id` (integer)  
- `student_id` (integer)  
- `amount` (integer)  
- `status` (default: 'Pending')


create table fees (
  fee_id integer,
  student_id integer,
  amount integer,
  status text default 'pending'
);

### ⚡ Task 7: Create a Table with NOT NULL Constraint  
**Question:** Create a `teachers` table where `name` and `subject` cannot be NULL.  
**Requirements:**  
- `teacher_id` (integer)  
- `name` (text, not null)  
- `subject` (text, not null)


create table teachers (
  teacher_id integer,
  name text not null,
  subject text not null
);


### ⚡ Task 8: Create a Table with UNIQUE Constraint  
**Question:** Create a `library` table where book title must be unique.  
**Requirements:**  
- `book_id` (integer)  
- `title` (text, unique)  
- `author` (text)


create table library (
  book_id integer,
  title text unique,
  author text
);


### ⚡ Task 9: Create a Table with CHECK Constraint  
**Question:** Create a `hostel` table where `room_capacity` must be greater than 0.  
**Requirements:**  
- `hostel_id` (integer)  
- `hostel_name` (text)  
- `room_capacity` (integer, CHECK > 0)


create table hostel (
  hostel_id integer,
  hostel_name text,
  room_capacity integer check (room_capacity > 0)
);

### ⚡ Task 10: Create Table Using Multiple Data Types  
**Question:** Create a `staff` table using multiple data types.  
**Requirements:**  
- `staff_id` (integer)  
- `name` (text)  
- `dob` (date)  
- `salary` (float)



create table staff (
  staff_id integer,
  name text,
  dob date,
  salary float
);

































































