
DROP table student

CREATE TABLE student(
student_id INT PRIMARY KEY,
name VARCHAR(20),
major VARCHAR(20)
); #creates a table

DESCRIBE student;

INSERT into student values(
1, 'Jibran', 'Engineering'); #basic procedure for insertion


INSERT into student values(
2, 'Safi', 'Engineering'); 

Insert into student(student_id, name) values(3, 'Sana');

select * from student; #selects all the values from the table


CREATE table workers(
id int primary key auto_increment,
name varchar(20) unique,
gender varchar(5) not null); #understandable - auto: ++1, unique: no repeated value in the variable and not null: no null value
# a primary key by default is a unique and var char value

insert into workers(name, gender) values('Lampard', 'male'); #when you do auto increment, then you don't need to insert a variable value for ID all the time
insert into workers(name, gender) values('Torres', 'male'); #this can be also done to include a null value for id (if it wasn't a primary key)


alter table workers drop pay; #dropping a table column
alter table workers add pay int default 2000;

#when dealing with tables, it is always going to be 'table' included in the syntax.

update workers 
set pay = 5000
where name = 'Gerrard'; #same function can be performed for delete


select * from workers
where name in ('Gerrard', 'Lampard') #name in is just like other logical operations. Also note that '<>' is not equal to
#asc and desc can be used for id or other variables using order by also  

#####################################################################################################
# they say practice makes a man perfect

drop table sarfu

create table sarfu(
ID int primary key auto_increment,
name varchar(10),
occupation varchar(20),
rating int
);

insert into sarfu(name, occupation, rating) values('sarfaraz', 'scientist', 5.0);
insert into sarfu(name, occupation, rating) values('muzammil', 'police', 5.0);
insert into sarfu(name, occupation, rating) values('shahnoor', 'cricket', 5.0);

select *
from sarfu;

select name, rating
from sarfu
where occupation like '%scientist';


select sum(rating)
from sarfu;

select avg(rating)
from sarfu;


