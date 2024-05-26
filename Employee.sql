create database Employee;
use Employee;

create table Personal_details(
id int primary key,
name varchar(50)
);

insert into Personal_details
values
(101,"Ram"),
(102,"Vikash"),
(103,"Vanshu"),
(104,"Bob"),
(105,"Ajay");

select * from Personal_details;

create table Salary_details(
id int primary key,
amount varchar(50)
);

insert into Salary_details
values
(103,25000),
(107,45000),
(102,52000),
(108,47000),
(105,71000);

select * from Salary_details;

-- FULL JOIN
select * 
from Personal_details as p
left join Salary_details as s
on p.id=s.id
where p.id=s.id is null
UNION
select * 
from Personal_details as p
right join Salary_details as s
on p.id=s.id
where s.id=p.id is null;

-- LEFT EXCLUSIVE
select *
from Personal_details as p
left join Salary_details as s
on p.id=s.id
where s.id is null;

-- RIGHT EXCLUSIVE
select *
from Personal_details as p
right join Salary_details as s
on p.id=s.id
where p.id is null;

create table Employee1(
id int primary key,
name varchar(50),
manager_id int
);
insert into Employee1
values
(1,"adam",3),
(2,"bob",4),
(3,"casey",null),
(4,"donald",3);

-- select a.name as manager_name,b.name
-- from Employee1 as a
-- join Employee1 as b
-- where a.id=b.manager_id;


select name ,id
from Employee1
where id in (select id from Employee1 where id%2 = 0);