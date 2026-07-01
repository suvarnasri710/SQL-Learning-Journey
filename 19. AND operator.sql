AND Operator
The WHERE clause can contain one or many AND operators.
The AND operator is used to filter records based on more than one condition.

Note: The AND operator displays a record if all the conditions are TRUE.

Syntax
SELECT column1, column2, ... FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

Example:
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

select * from students where year=4 AND marks 70;
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  1 | ram     |    4 | DBMS   |    80 |
|  8 | lavanya |    4 | UI/UX  |    73 |
+----+---------+------+--------+-------+

 select * from students where year=3 AND marks > 70 AND course='Java';
+----+------+------+--------+-------+
| id | name | year | course | marks |
+----+------+------+--------+-------+
|  2 | sita |    3 | Java   |    73 |
+----+------+------+--------+-------+

