-- find all duplicate emails in a table named Person
Create table If Not Exists Person (Id int, Email varchar(255));
Truncate table Person;
insert into Person (Id, Email) values ('1', 'a@b.com');
insert into Person (Id, Email) values ('2', 'c@d.com');
insert into Person (Id, Email) values ('3', 'a@b.com');
select * from Person;

-- **解法1 归类计次
--         1.group by Email将重复的聚合在一起
--         2.使用聚合函数count()计次
--         3. group by之后 having来过滤组函数条件
select Email
from Person
group by Email
having count(id) > 1
;

--解法2 （不推荐）
--       1. join将同样的email赋值给同一个id
--       2. group by id之后使用count()计次一个id下有几个相同email
--       3. having判断
--       4. 赋值法记得要用distinct
select distinct p1.Email
from Person p1
left join Person p2
    on p1.Email = p2.Email
group by p1.id
having count(p2.email) > 1
;
