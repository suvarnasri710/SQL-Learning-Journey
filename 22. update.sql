UPDATE Statement
The UPDATE statement is used to update or modify one or more records in a table.

Syntax
UPDATE table_name SET column1 = value1, column2 = value2, ... WHERE condition;

NOTE : Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!

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

update students set course='computer Networks' where id=3;
Query OK, 1 row affected (0.087 sec)

update students set course='computer Networks' where id=8;
Query OK, 1 row affected (0.066 sec)

select * from students;
+----+---------+------+-------------------+-------+
| id | name    | year | course            | marks |
+----+---------+------+-------------------+-------+
|  1 | ram     |    4 | DBMS              |    80 |
|  2 | sita    |    3 | Java              |    73 |
|  3 | raj     |    2 | computer Networks |    95 |
|  4 | laxmi   |    3 | Python            |    89 |
|  5 | gita    |    3 | Java              |    67 |
|  6 | alice   |    4 | Python            |    62 |
|  7 | cherry  |    2 | Java              |    95 |
|  8 | lavanya |    4 | computer Networks |    73 |
+----+---------+------+-------------------+-------+
