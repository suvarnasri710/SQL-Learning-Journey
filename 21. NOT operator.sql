The NOT operator is used in the WHERE clause to return all records that DO NOT match the specified criteria. 
It reverses the result of a condition from true to false and vice-versa.

the NOT operator is used in combination with the = operator.
  
The NOT operator is also used in combination with other operators to exclude data, such as:
NOT LIKE
NOT BETWEEN
NOT IN
IS NOT NULL
NOT EXISTS

Syntax: 
SELECT column1, column2, ...FROM table_name
WHERE NOT condition;

Example
  
select * from students where not course='java';
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  1 | ram     |    4 | DBMS   |    80 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  4 | laxmi   |    3 | Python |    89 |
|  6 | alice   |    4 | Python |    62 |
|  8 | lavanya |    4 | UI/UX  |    73 |
+----+---------+------+--------+-------+
  
--------------------------------------------------------------------------------------------
  
NOT LIKE Operator
The NOT LIKE operator is used in the WHERE clause to exclude rows that match a specified character pattern.

There are two wildcards often used in conjunction with the NOT LIKE operator:

A percent sign % - represents zero, one, or multiple characters
A underscore sign _ - represents a single character

Syntax: 
SELECT column1, column2, ...FROM table_name WHERE column_name NOT LIKE condition;
  
Example: 
select * from students where name not like 'r%';
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  2 | sita    |    3 | Java   |    73 |
|  4 | laxmi   |    3 | Python |    89 |
|  5 | gita    |    3 | Java   |    67 |
|  6 | alice   |    4 | Python |    62 |
|  7 | cherry  |    2 | Java   |    95 |
|  8 | lavanya |    4 | UI/UX  |    73 |
+----+---------+------+--------+-------+

-------------------------------------------------------------------------------------------

NOT BETWEEN Operator
The NOT BETWEEN operator is used in the WHERE clause to select rows where a value falls outside a specified inclusive range.
The NOT BETWEEN operator can be used with numeric, text, or date values.
  
Syntax: 
SELECT column1, column2, ...FROM table_name WHERE column_name NOT BETWEEN condition;

Example: 
select * from students where marks not between 60 AND 80;
+----+--------+------+--------+-------+
| id | name   | year | course | marks |
+----+--------+------+--------+-------+
|  3 | raj    |    2 | UI/UX  |    95 |
|  4 | laxmi  |    3 | Python |    89 |
|  7 | cherry |    2 | Java   |    95 |
+----+--------+------+--------+-------+

-------------------------------------------------------------------------------------------

NOT IN Operator
The NOT IN operator is used in the WHERE clause to exclude rows that match any value in a specified list or a subquery result set.

Syntax: 
SELECT column1, column2, ...FROM table_name WHERE column_name NOT IN condition;

Example: 
select * from students where course not in ('java','Python');
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  1 | ram     |    4 | DBMS   |    80 |
|  3 | raj     |    2 | UI/UX  |    95 |
|  8 | lavanya |    4 | UI/UX  |    73 |
+----+---------+------+--------+-------+  

-------------------------------------------------------------------------------------------

Greater Than
The "NOT Greater Than" condition is expressed with the NOT operator in conjunction with the standard greater than or equal to (>=) operator.

Syntax: 
SELECT column1, column2, ...FROM table_name WHERE NOT column_name > condition;

Example:
select * from students where not marks >80;
+----+---------+------+--------+-------+
| id | name    | year | course | marks |
+----+---------+------+--------+-------+
|  1 | ram     |    4 | DBMS   |    80 |
|  2 | sita    |    3 | Java   |    73 |
|  5 | gita    |    3 | Java   |    67 |
|  6 | alice   |    4 | Python |    62 |
|  8 | lavanya |    4 | UI/UX  |    73 |
+----+---------+------+--------+-------+

-------------------------------------------------------------------------------------------

NOT Less Than
The "NOT Less Than" condition is expressed with the NOT operator in conjunction with the standard less than or equal to (<=) operator.

Syntax: 
SELECT column1, column2, ...FROM table_name WHERE NOT column_name < condition;

Example:
select * from students where not marks < 80;
+----+--------+------+--------+-------+
| id | name   | year | course | marks |
+----+--------+------+--------+-------+
|  1 | ram    |    4 | DBMS   |    80 |
|  3 | raj    |    2 | UI/UX  |    95 |
|  4 | laxmi  |    3 | Python |    89 |
|  7 | cherry |    2 | Java   |    95 |
+----+--------+------+--------+-------+
