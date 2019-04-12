-- Mary wants to change seats for the adjacent students
Create table If Not Exists seat(id int, student varchar(255))
Truncate table seat
insert into seat (id, student) values ('1', 'Abbot')
insert into seat (id, student) values ('2', 'Doris')
insert into seat (id, student) values ('3', 'Emerson')
insert into seat (id, student) values ('4', 'Green')
insert into seat (id, student) values ('5', 'Jeames')

-- solution
--          1.单数id＋1，复数id－1，最大单数id保持不变
--          2.case end
select 
    case
        when id mod 2 != 0 and id = (select max(id) from seat s1) then id
        when id mod 2 !=0 then id+1
        else id-1
    end as id, student
from seat
order by id asc;


    