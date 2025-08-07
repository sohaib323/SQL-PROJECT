### DAY ☀️: **Task – Data Types in SQL**  

### ⚡ Task 1: Create a Basic Table with Data Types  
**Question:** Create a table `employees` with id (INT), name (VARCHAR), and salary (FLOAT).  
**Requirements:**  
- Use correct data types for each column

create table rock (
employees_id int,
name varchar(100),
salary float
);


### ⚡ Task 2: Create a Table for Book Details  
**Question:** Create a `books` table to store id (INT), title (VARCHAR), price (FLOAT), and publish_date (DATE).  
**Requirements:**  
- Set title as `VARCHAR(100)`  
- Use proper types for price and date  

create table book(
store_id int,
Title varchar(200),
price float,
publish_date date
);

### ⚡ Task 3: Add a BOOLEAN Column  
**Question:** Create a `payments` table with id (INT), amount (FLOAT), and paid (BOOLEAN).  
**Requirements:**  
- Track whether payment is made using TRUE or FALSE  

create table payments (
    id int,
    amount float,
    paid boolean
);



### ⚡ Task 4: Create Table for Student Registration  
**Question:** Create a `registrations` table with student_id (INT), name (VARCHAR), and date_registered (DATE).  
**Requirements:**  
- Use `VARCHAR(50)` for name  

create table registrations (
student_id int,
name varchar(200),
date_registered date
);



### ⚡ Task 5: Create Table with All Major Types  
**Question:** Create a table `products` with these columns:  
- product_id (INT)  
- product_name (VARCHAR)  
- price (FLOAT)  
- in_stock (BOOLEAN)  
- added_on (DATE)  

create table products (
product_id int,
product_name varchar(200),
price float,
in_stock boolean,
added_on date
);

### ⚡ Task 6: Insert Sample Data with All Types  
**Question:** Insert one record into the `products` table with all correct types.  
**Requirements:**  
- Use string for `product_name`, float for `price`, etc.  

---

INSERT INTO products (product_id, product_name, price, in_stock)
VALUES (1, 'Wireless Mouse', 29.99, TRUE);


### ⚡ Task 7: Identify Data Types  
**Question:** Given a table `patients(name, age, admitted_on, fever)`, assign correct data types.  
**Requirements:**  
- Name = text, age = number, admitted_on = date, fever = boolean  



create table patients (
    name text,
    age int,
    admitted_on date,
    fever boolean
);

## ⚡ Task 8: Create Course Table  
**Question:** Create `courses` table with course_id (INT), course_name (VARCHAR), credits (INT), created_on (DATE).  
**Requirements:**  
- Store course creation date correctly  





create table courses (
    course_id int,
    course_name varchar(100),
    credits int,
    created_on date
);



### ⚡ Task 9: Create Login Table  
**Question:** Create `logins` table with user_id (INT), username (VARCHAR), active (BOOLEAN), last_login (DATE).  
**Requirements:**  
- Use BOOLEAN to track active users  



create table logins (
    user_id int,
    username varchar(100),
    active boolean,
    last_login date
);


### ⚡ Task 10: Create Table with Length-Limited Text  
**Question:** Create a `feedback` table with name (VARCHAR(30)) and message (VARCHAR(255)).  
**Requirements:**  
- Use suitable VARCHAR limits for both columns


create table feedback (
    name varchar(30),
    message varchar(255)
);














































































