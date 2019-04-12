--delete all duplicate email, keeping only its smallest Id.
drop table Person;
create table Person(id int primary key,Email varchar(25));
insert into Person (id,Email) values (1,'john@example.com');
insert into Person (id,Email) values (2,'bob@example.com');
insert into Person (id,Email) values (3,'john@example.com');
select * from Person;


-- 解法1
--       1. 根据email来group by相同邮件，找出同类邮件的min(id)
--       2. 把相同邮件的min(id)变成一个table，用来 select from
--       3. where语句找出 id不在table里的
--       4. delete 删除
delete from Person
where id not in 
( select * from
    (select min(id) 
        from Person 
        group by Email) as tmp
);



-- 解法2
--       1. 无法说明 自己看吧
--       2. 类似的赋值概念 但没有用join
DELETE p1 FROM Person p1, Person p2
WHERE p1.Email = p2.Email and p1.id > p2.id
;

