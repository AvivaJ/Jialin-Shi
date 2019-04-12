
-- find second highest salary

DROP TABLE if exists Employee;
Create table Employee (Id int, Salary int);
insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee (Id, Salary) values ('3', '300');



-- 解法1： 1. 根据salary排序高低
--         2. limit 1 offset 1 取第二位的值
--         3. 可能最高薪资有多个，distinct salary来排序取第二高
--         4. select ifnull(判断是否null，null时赋值)
--         5. ifnull讨论null

select ifnull
        ((select distinct salary from Employee 
        order by salary desc 
        limit 1 offset 1),
        null) as SecondHighestSalary
;
-- 省略了 from employee以后 为什么还一定要加 distinct
-- 如果加了 from employee,结果就会run3次，出3个200  为什么可以省略from table




-- 解法2： 1. 从employee中取max(salary)值
--         2. where语句取 小于最大salary值的所有salary值
--         3. max() 取小于最大salary值中的最大值
--         4. if max()为null，取null

select ifnull(max(salary),null) as SecondHighestSalary 
from Employee
    where salary < (select max(salary) from Employee)
;



