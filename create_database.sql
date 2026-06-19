create database sampleDb;
use sampleDb;
create table student(id int primary key, name varchar(50));
insert into student value(1, 'ram');
insert into student values(2, 'parvathi'), (3,'shiv'), (4, 'shiv');
select * from student;