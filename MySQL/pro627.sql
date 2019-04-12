-- Swap all f and m values
create table if not exists salary(id int, name varchar(100), sex char(1), salary int);
Truncate table salary;
insert into salary (id, name, sex, salary) values ('1', 'A', 'm', '2500');
insert into salary (id, name, sex, salary) values ('2', 'B', 'f', '1500');
insert into salary (id, name, sex, salary) values ('3', 'C', 'm', '5500');
insert into salary (id, name, sex, salary) values ('4', 'D', 'f', '500');

--解法1
--      1.更改值首先是update,set
--      2.更改性别，set sex＝
--      3. 使用if语句更改， if(判断条件，是，否)
update salary 
set sex=
    if(sex='f','m','f') 
;

--解法2
--      1.更改值首先是update,set
--      2.更改性别，set sex＝
--      3. 使用case进行判断
update salary 
set sex=
    case
        when sex ='f' then 'm'
        else 'f'
    end
;