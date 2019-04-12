
--find all numbers that appear at least three times consecutively

drop table Logs;
Create table If Not Exists Logs (Id int, Num int);

insert into Logs (Id, Num) values ('1', '1');
insert into Logs (Id, Num) values ('2', '1');
insert into Logs (Id, Num) values ('3', '1');
insert into Logs (Id, Num) values ('4', '2');
insert into Logs (Id, Num) values ('5', '1');
insert into Logs (Id, Num) values ('6', '2');
insert into Logs (Id, Num) values ('7', '2');
select * from Logs;


-- 解法1
--       1. 用id＋1首先join自己三次，将后两位的num都赋值给第一个id
--       2. where子句查看自己与两个新赋值等不等
--     **3. 因为每3个进行一次判断，用distinct去重复值
select distinct l1.Num as ConsecutiveNums
from Logs l1
left join Logs l2
    on l2.id=l1.id+1
left join Logs l3
    on l3.id=l1.id+2   
where l1.num = l2.num and l1.num = l3.num
;