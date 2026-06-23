create database sampleDb;
use sampleDb;

create table student(id int primary key, name varchar(50));
insert into student value(1, 'ram'), (2, 'parvathi'), (3,'shiv'), (4, 'shiv'),(5, 'Krishna'), (6, 'Ravi'), (7, 'Anjali');
select * from student;

#output
| id | name     |
| -- | -------- |
| 1  | Ram      |
| 2  | Parvathi |
| 3  | Shiv     |
| 4  | Sita     |
| 5  | krishna  |

Truncate table Students;

select * from Students;

#output
Empty set (0.015 sec)

drop table Students;
Query OK, 0 rows affected
