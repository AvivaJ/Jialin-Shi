
-- rank with no hole(consecutively)
drop table if exists Scores;
Create table If Not Exists Scores (Id int, Score DECIMAL(3,2));
insert into Scores (Id, Score) values ('1', '3.50');
insert into Scores (Id, Score) values ('2', '3.65');
insert into Scores (Id, Score) values ('3', '4.00');
insert into Scores (Id, Score) values ('4', '3.85');
insert into Scores (Id, Score) values ('5', '4.00');
insert into Scores (Id, Score) values ('6', '3.65');

--解法1 
--      1. distinct看不同的数值
--      2. count()数有几个不同数值，决定排名个数
--      3. where 决定大于等于自己的值 引入第二个自身table来做比较
--      4. 打包select，顺序排位
select
    Score,
    (select count(distinct Score) from Scores where score >= s.score) rank
from Scores s
order by rank asc;


--解法2 
--      1. 查询scores里不同的score值，并定义为新table
--      2. 在新table里用count(*)数有几个比自己大的score，命名rank，
--      3. 旧score与新score比较大小，需要from新scores， 增加对应的select（有几个from就有几个select）
--      4. order by排序
select
    score,
    (select count(*) from (select distinct score from Scores) tmp where score >= new.score) rank
from Scores new
order by rank asc;


--解法3
--      1. 利用join来赋值，将比自己大的值都赋值过来
--      2. group by将每个id的新赋值划分，再用组函数count
--      3. distinct去重复的赋值 (不用distinct的话，排名不连续)
--      4. order by 排序
select s.score, count(distinct t.score) as rank
from Scores s
left join Scores t
    on t.score >= s.score
group by s.id
order by rank
;














