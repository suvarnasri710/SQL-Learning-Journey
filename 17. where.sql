WHERE Clause is used to filter records.
used to extract only those records that fulfill a specific condition.

Syntax
SELECT column1, column2, ... FROM table_name
WHERE condition;

Note: The WHERE clause is not only used in SELECT statements, it is also used in UPDATE, DELETE, etc.


Operators in The WHERE Clause: 
You can use other operators than the = operator to filter the search.

The following operators can be used in the WHERE clause:

Operator	Description	
=		Equal	
>		Greater than	
<		Less than	
>=		Greater than or equal	
<=		Less than or equal	
<>		Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN		Between a certain range	
LIKE		Search for a pattern	
IN		To specify multiple possible values for a column

------------------------------------------------------------------------------------------------------------------


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
