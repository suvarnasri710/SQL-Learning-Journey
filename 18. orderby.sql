The ORDER BY keyword is used to sort the result-set in ascending or descending order.

sorts the result-set in ascending order (ASC) by default.

ORDER BY Syntax
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

-------------------------------------------------------------------------

select * from students;
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  1 | ram     |    4 | DBMS   |    80 |
|  2 | sita    |    3 | Java   |    73 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  4 | laxmi   |    3 | Python |    89 |
|  5 | gita    |    3 | Java   |    67 |
|  6 | alice   |    4 | Python |    62 |
|  7 | cherry  |    2 | Java   |    95 |
|  8 | lavanya |    4 | UI/UX  |    73 |
+----+---------+------+--------+-------+

 select * from students order by marks;    //bydefault ascending order
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  6 | alice   |    4 | Python |    62 |
|  5 | gita    |    3 | Java   |    67 |
|  2 | sita    |    3 | Java   |    73 |
|  8 | lavanya |    4 | UI/UX  |    73 |
|  1 | ram     |    4 | DBMS   |    80 |
|  4 | laxmi   |    3 | Python |    89 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  7 | cherry  |    2 | Java   |    95 |
+----+---------+------+--------+-------+

select * from students order by marks desc;   //Descending order
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  3 | raj     |    2 | UI/UX  |    95 |
|  7 | cherry  |    2 | Java   |    95 |
|  4 | laxmi   |    3 | Python |    89 |
|  1 | ram     |    4 | DBMS   |    80 |
|  2 | sita    |    3 | Java   |    73 |
|  8 | lavanya |    4 | UI/UX  |    73 |
|  5 | gita    |    3 | Java   |    67 |
|  6 | alice   |    4 | Python |    62 |
+----+---------+------+--------+-------+


select * from students order by name;   //Alphabetical order
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  6 | alice   |    4 | Python |    62 |
|  7 | cherry  |    2 | Java   |    95 |
|  5 | gita    |    3 | Java   |    67 |
|  8 | lavanya |    4 | UI/UX  |    73 |
|  4 | laxmi   |    3 | Python |    89 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  1 | ram     |    4 | DBMS   |    80 |
|  2 | sita    |    3 | Java   |    73 |
+----+---------+------+--------+-------+

select * from students order by name desc;  //Reverse Alphabetical order
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  2 | sita    |    3 | Java   |    73 |
|  1 | ram     |    4 | DBMS   |    80 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  4 | laxmi   |    3 | Python |    89 |
|  8 | lavanya |    4 | UI/UX  |    73 |
|  5 | gita    |    3 | Java   |    67 |
|  7 | cherry  |    2 | Java   |    95 |
|  6 | alice   |    4 | Python |    62 |
+----+---------+------+--------+-------+

select * from students order by course,marks;  //Multiple columns
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  1 | ram     |    4 | DBMS   |    80 |
|  5 | gita    |    3 | Java   |    67 |
|  2 | sita    |    3 | Java   |    73 |
|  7 | cherry  |    2 | Java   |    95 |
|  6 | alice   |    4 | Python |    62 |
|  4 | laxmi   |    3 | Python |    89 |
|  8 | lavanya |    4 | UI/UX  |    73 |
|  3 | raj     |    2 | UI/UX  |    95 |
+----+---------+------+--------+-------+

select * from students order by year desc, marks asc;   //Combine ASC and DESC
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  6 | alice   |    4 | Python |    62 |
|  8 | lavanya |    4 | UI/UX  |    73 |
|  1 | ram     |    4 | DBMS   |    80 |
|  5 | gita    |    3 | Java   |    67 |
|  2 | sita    |    3 | Java   |    73 |
|  4 | laxmi   |    3 | Python |    89 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  7 | cherry  |    2 | Java   |    95 |
+----+---------+------+--------+-------+
