select * from students;
+----+---------+------+--------+
| id | name    | year | course |
+----+---------+------+--------+
|  1 | ram     |    4 | DBMS   |
|  2 | sita    |    3 | Java   |
|  3 | raj     |    2 | UI/UX  |
|  4 | laxmi   |    3 | Python |
|  5 | gita    |    3 | Java   |
|  6 | alice   |    4 | Python |
|  7 | cherry  |    2 | Java   |
|  8 | lavanya |    4 | UI/UX  |
+----+---------+------+--------+

select name,year from students where course='UI/UX';
+---------+------+
| name    | year |
+---------+------+
| raj     |    2 |
| lavanya |    4 |
+---------+------+

select id,name,year from students where course='Java';
+----+--------+------+
| id | name   | year |
+----+--------+------+
|  2 | sita   |    3 |
|  5 | gita   |    3 |
|  7 | cherry |    2 |
+----+--------+------+

select id,name,year from students where course='C';
Empty set

select id,name,course from students where year='4';
+----+---------+--------+
| id | name    | course |
+----+---------+--------+
|  1 | ram     | DBMS   |
|  6 | alice   | Python |
|  8 | lavanya | UI/UX  |
+----+---------+--------+
