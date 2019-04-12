-- highest salary in each department--
drop table Employee;
drop table Department;
Create table  Employee (Id int, Name varchar(255), Salary int, DepartmentId int);
Create table  Department (Id int, Name varchar(255));

insert into Employee (Id, Name, Salary, DepartmentId) values ('1', 'Joe', '70000', '1');
insert into Employee (Id, Name, Salary, DepartmentId) values ('2', 'Henry', '80000', '2');
insert into Employee (Id, Name, Salary, DepartmentId) values ('3', 'Sam', '60000', '2');
insert into Employee (Id, Name, Salary, DepartmentId) values ('4', 'Max', '90000', '1');
insert into Department (Id, Name) values ('1', 'IT');
insert into Department (Id, Name) values ('2', 'Sales');
select * from Employee;
SELECT * from Department;




-- 解法1 
--       1. group by DepartmentId 按部门分类 
--       2. 使用max(salary)找到每个部门的最高salary
--       3. 通过 in 来判断部门和salary在不在区间内 
--       4. 最后join把部门id换成部门名字（join在from 之后马上)

select d.name as Department,e1.name AS Employee, salary
from Employee e1
join Department d
    on d.id = e1.departmentid
where (departmentid,salary) in
(select departmentid, max(salary)
from Employee
group by departmentid)
;




-- 解法2
--       1. 通过join 将相同部门的salary赋值到EmployeeId上
--       2. group by EmployeeId 横向比较自己和同部门的薪资
--       3. having筛选，如果自己的薪资＝max(新赋值的薪资)
--       4. join department name
select d.Name as Department, e1.name as Employee, e1.Salary
from Employee e1
join Department d
    on e1.departmentid = d.id
left join Employee e2
    on e1.departmentid = e2. departmentid
group by e1.id
having e1.salary = max(e2.salary)
;



-- 此解法能出结果但leetcode没有过 需要debug

select Department.Name as Department,
        tmp.Name as Employee, Salary 
from
(select * from Employee
order by DepartmentId asc, Salary desc) tmp
join Department
    on tmp.departmentid = Department.id
group by Department.Name;











