use sampledb
Database changed

Alter table student add email varchar(100);

insert into student values (5, 'lavanya', 'lav@gmail.com');

select * from student;
+----+----------+---------------+
| id | name     | email         |
+----+----------+---------------+
|  1 | ram      | NULL          |
|  2 | parvathi | NULL          |
|  3 | shiv     | NULL          |
|  4 | shiv     | NULL          |
|  5 | lavanya  | lav@gmail.com |
+----+----------+---------------+
-------------------------------------------------------------------------------------
Alter table student rename column email to Gmail;

select * from student;
+----+----------+---------------+
| id | name     | Gmail         |
+----+----------+---------------+
|  1 | ram      | NULL          |
|  2 | parvathi | NULL          |
|  3 | shiv     | NULL          |
|  4 | shiv     | NULL          |
|  5 | lavanya  | lav@gmail.com |
+----+----------+---------------+
--------------------------------------------------------------------------------------
Alter table student drop column Gmail;
Query OK, 0 rows affected
Records: 0  Duplicates: 0  Warnings: 0
