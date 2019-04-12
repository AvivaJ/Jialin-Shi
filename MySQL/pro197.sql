-- find all dates' Ids with higher temperature compared to its previous (yesterday's) dates.

Create table If Not Exists Weather (Id int, RecordDate date, Temperature int);
Truncate table Weather;
insert into Weather (Id, RecordDate, Temperature) values ('1', '2015-01-01', '10');
insert into Weather (Id, RecordDate, Temperature) values ('2', '2015-01-02', '25');
insert into Weather (Id, RecordDate, Temperature) values ('3', '2015-01-03', '20');
insert into Weather (Id, RecordDate, Temperature) values ('4', '2015-01-04', '30');

-- 解法1
--      1. 首先想到用join来赋值气温
--      2. 赋值条件是日子相差一天，datediff(后，前)＝1
--      3. 结果过滤条件 where后一天的气温更高
select w1.id as Id
from Weather w1
left join Weather w2
    on datediff(w1.recorddate,w2.recorddate) = 1
where w1.temperature > w2.temperature
;



-- 解法2
--      1. 首先想到用join来赋值气温
--      2. 赋值条件是日子相差一天，subdate(w.recorddate,1)
--      3. 结果过滤条件 where后一天的气温更高
select w1.id as Id
from Weather w1
left join Weather w2
    on w2.recorddate = subdate(w1.recorddate,1)
where w1.temperature > w2.temperature
;