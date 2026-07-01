DELETE Statement
The DELETE statement is used to delete existing records in a table.

Syntax
DELETE FROM table_name WHERE condition;

Note: Be careful when deleting records in a table! Notice the WHERE clause in the DELETE statement. 
  The WHERE clause specifies which record(s) should be deleted. 
  If you omit the WHERE clause, all records in the table will be deleted!

Example
select * from emp;
+-----+--------+--------------------+-----------+
| id  | name   | Email              | phone     |
+-----+--------+--------------------+-----------+
| 101 | alice  | alice@gmail.com    | NULL      |
| 102 | balu   | balu02@gmail.com   | 783698524 |
| 103 | cherry | cherry03@gmail.com | NULL      |
+-----+--------+--------------------+-----------+

delete from emp where phone='783698524';
select * from emp;
+-----+--------+--------------------+-------+
| id  | name   | Email              | phone |
+-----+--------+--------------------+-------+
| 101 | alice  | alice@gmail.com    | NULL  |
| 103 | cherry | cherry03@gmail.com | NULL  |
+-----+--------+--------------------+-------+

delete from emp;  //Deletes all records but table is exsited

select * from emp;
Empty set (0.006 sec)

 select * from emp;
Empty set (0.006 sec)

show tables;
+--------------------+
| Tables_in_sampledb |
+--------------------+
| age                |
| course             |
| emp                |
| employ             |
| employee           |
| person             |
| student            |
+--------------------+

drop table emp;
Query OK, 0 rows affected (0.195 sec)

show tables;
+--------------------+
| Tables_in_sampledb |
+--------------------+
| age                |
| course             |
| employ             |
| employee           |
| person             |
| student            |
+--------------------+
