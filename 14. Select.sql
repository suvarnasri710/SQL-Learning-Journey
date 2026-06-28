create database college;
use college;
create table students(id int primary key, name varchar(50), year int);
insert into students values(1, 'ram', 4),(2,'sita',3),(3, 'raj',2),(4, 'laxmi', 3),(5, 'gita', 3),(6,'alice', 4),(7, 'cherry', 2),(8, 'lavanya', 4);

select * from students;
+----+---------+------+
| id | name    | year |
+----+---------+------+
|  1 | ram     |    4 |
|  2 | sita    |    3 |
|  3 | raj     |    2 |
|  4 | laxmi   |    3 |
|  5 | gita    |    3 |
|  6 | alice   |    4 |
|  7 | cherry  |    2 |
|  8 | lavanya |    4 |
+----+---------+------+

select name from students;
+---------+
| name    |
+---------+
| ram     |
| sita    |
| raj     |
| laxmi   |
| gita    |
| alice   |
| cherry  |
| lavanya |
+---------+

select id,name from students;
+----+---------+
| id | name    |
+----+---------+
|  1 | ram     |
|  2 | sita    |
|  3 | raj     |
|  4 | laxmi   |
|  5 | gita    |
|  6 | alice   |
|  7 | cherry  |
|  8 | lavanya |
+----+---------+
