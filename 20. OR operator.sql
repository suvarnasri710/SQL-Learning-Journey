OR Operator
The WHERE clause can contain one or more OR operators.
The OR operator is used to filter records based on more than one condition.

Note: The OR operator displays a record if any of the conditions are TRUE.

Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

Example
  
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
  
select * from students where year=1 or marks>70;
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  1 | ram     |    4 | DBMS   |    80 |
|  2 | sita    |    3 | Java   |    73 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  4 | laxmi   |    3 | Python |    89 |
|  7 | cherry  |    2 | Java   |    95 |
|  8 | lavanya |    4 | UI/UX  |    73 |
+----+---------+------+--------+-------+

select * from students where marks>80 or name like 'r%';
+----+--------+------+--------+-------+
| id | name   | year | course | marks |
+----+--------+------+--------+-------+
|  1 | ram    |    4 | DBMS   |    80 |
|  3 | raj    |    2 | UI/UX  |    95 |
|  4 | laxmi  |    3 | Python |    89 |
|  7 | cherry |    2 | Java   |    95 |
+----+--------+------+--------+-------+

select * from students where marks>80 AND (name like 'r%' or year>3);  //Combining AND and OR
+----+------+------+--------+-------+
| id | name | year | course | marks |
+----+------+------+--------+-------+
|  3 | raj  |    2 | UI/UX  |    95 |
+----+------+------+--------+-------+
