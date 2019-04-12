--  finds out employees who earn more than their managers
Drop table if exists Employee;
Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int);
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', 'None');
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', 'None');
select * from Employee;

--解法1 
--      1. 将要比较的manager通过join赋值上去
--      2. where来比较salary

select e1.Name as Employee
from Employee e1
left join Employee e2
    on e1.ManagerId = e2.id
where e1.Salary > e2.Salary
;