NULL and NOT NULL

Example
show databases;
use sampledb;
Database changed
  
create table employee(
  emp_id int NOT NULL, 
  name varchar(25) NOT NULL, 
  Email varchar(50) primary key, 
  phone varchar(15));

insert into employee values
  (101, 'alice', 'alice@gmail.com', NULL), 
  (102, 'balu', 'balu02@gmail.com', 783698524), 
  (103, 'cherry', 'cherry03@gmail.com', NULL);
select * from employee;
+--------+--------+--------------------+-----------+
| emp_id | name   | Email              | phone     |
+--------+--------+--------------------+-----------+
|    101 | alice  | alice@gmail.com    | NULL      |
|    102 | balu   | balu02@gmail.com   | 783698524 |
|    103 | cherry | cherry03@gmail.com | NULL      |
+--------+--------+--------------------+-----------+

-----------------------------------------------------------------------------------------------------------------------
UNIQUE 
  
CREATE TABLE Employee (
    EmpID INT,
    Name VARCHAR(50),
    Email VARCHAR(50) UNIQUE);

INSERT INTO Employee VALUES
(1, 'Ram', 'ram@gmail.com'),
(2, 'Sita', 'sita@gmail.com');

select * from Employee;
+-------+------+----------------+
| EmpID | Name | Email          |
+-------+------+----------------+
|     1 | Ram  | ram@gmail.com  |
|     2 | Sita | sita@gmail.com |
+-------+------+----------------+

INSERT INTO Employee VALUES (3, 'Shiv', 'ram@gmail.com');
ERROR 1062 (23000): Duplicate entry 'ram@gmail.com' for key 'Employee.Email'

-----------------------------------------------------------------------------------------------------------------------
PRIMARY KEY 
  
create table person ( id int primary key, name varchar(50));

insert into person values(101, 'suvarna'), (102,'sri');

mysql> select * from person;
+-----+---------+
| id  | name    |
+-----+---------+
| 101 | suvarna |
| 102 | sri     |
+-----+---------+

insert into person values(101, 'kandula');
ERROR 1062 (23000): Duplicate entry '101' for key 'person.PRIMARY'
  
-----------------------------------------------------------------------------------------------------------------------
FOREIGN KEY

create table student ( sid int primary key, name varchar(40));
insert into student values(101, 'ram'),(102, 'sita');
select * from student;
+-----+------+
| sid  | name |
+-----+------+
| 101 | ram  |
| 102 | sita |
+-----+------+
create table fee( fid int primary key, id int, amount int, foreign key(sid) references student(sid));
insert into fee values(1, 101, 30000),(2, 102, 45000);
 select * from fee;
+-----+------+--------+
| fid | sid   | amount |
+-----+------+--------+
|   1 |  101 |  30000 |
|   2 |  102 |  45000 |
+-----+------+--------+

-----------------------------------------------------------------------------------------------------------------------
CHECK
  
create table age(id int, name varchar(30), age int check (age <= 18));
insert into age values(1, 'sitha', 12), (1, 'githa', 18);
insert into age values(1, 'latha', 30);
ERROR 3819 (HY000): Check constraint 'age_chk_1' is violated.
select * from age;
+------+-------+------+
| id   | name  | age  |
+------+-------+------+
|    1 | sitha |   12 |
|    1 | githa |   18 |
+------+-------+------+

-----------------------------------------------------------------------------------------------------------------------
DEFAULT

create table course(id int, course_name varchar(20), status varchar(30) default 'pending');
insert into course values(1, 'python', 'registered');
insert into course(id, course_name) values (2, 'java');
select * from course;
+------+-------------+------------+
| id   | course_name | status     |
+------+-------------+------------+
|    1 | python      | registered |
|    2 | java        | pending    |
+------+-------------+------------+
