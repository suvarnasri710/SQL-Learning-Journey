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

select distinct course from students;
+--------+
| course |
+--------+
| DBMS   |
| Java   |
| UI/UX  |
| Python |
+--------+

select count(distinct course) from students;
+------------------------+
| count(distinct course) |
+------------------------+
|                      4 |
+------------------------+
