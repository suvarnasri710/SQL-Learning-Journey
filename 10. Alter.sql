use sampledb
Database changed

alter table students add column email varchar(50);

select * from students;
+----+--------+------+------+-------+
| Id | name   | dept | year | email |
+----+--------+------+------+-------+
|  1 | ram    | cse  |    4 | NULL  |
|  2 | Seetha | css  |    3 | NULL  |
+----+--------+------+------+-------+

update students set email = 'ram@gmail.com' where id=1;
update students set email = 'seetha@gmail.com' where id=2;

select * from Students;
+----+--------+------+------+------------------+
| Id | name   | dept | year | email            |
+----+--------+------+------+------------------+
|  1 | ram    | cse  |    4 | ram@gmail.com    |
|  2 | Seetha | css  |    3 | seetha@gmail.com |
+----+--------+------+------+------------------+

  
ALTER TABLE students MODIFY email varchar(100) NOT NULL;

insert into Students values(3, 'raju', 'ece',3);
ERROR 1136 (21S01): Column count doesnt match value count at row 1
  
insert into Students values(3, 'raju', 'ece',3, 'raju@gmail.com');

select * from Students;
+----+--------+------+------+------------------+
| Id | name   | dept | year | email            |
+----+--------+------+------+------------------+
|  1 | ram    | cse  |    4 | ram@gmail.com    |
|  2 | Seetha | css  |    3 | seetha@gmail.com |
|  3 | raju   | ece  |    3 | raju@gmail.com   |
+----+--------+------+------+------------------+

  
alter table Students rename column email to Gmail;

select * from students;
+----+--------+------+------+------------------+
| Id | name   | dept | year | Gmail            |
+----+--------+------+------+------------------+
|  1 | ram    | cse  |    4 | ram@gmail.com    |
|  2 | Seetha | css  |    3 | seetha@gmail.com |
|  3 | raju   | ece  |    3 | raju@gmail.com   |
+----+--------+------+------+------------------+

  
alter table Students drop column year;
select * from Students;
+----+--------+------+------------------+
| Id | name   | dept | Gmail            |
+----+--------+------+------------------+
|  1 | ram    | cse  | ram@gmail.com    |
|  2 | Seetha | css  | seetha@gmail.com |
|  3 | raju   | ece  | raju@gmail.com   |
+----+--------+------+------------------+
