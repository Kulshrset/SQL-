/*id,name,age,gender,grade,city,marks*/

DROP TABLE IF EXISTS men;

create table men(
id int not null,
name varchar(52),
age integer,
gender varchar(65),
grade char(56),
city varchar(90),
marks int
)

insert into men(id,name,age,gender,grade,city,marks)
values (1,'Anjali',16,'Female',10,'Delhi',78),
(2,'Rahul',17,'Male',11,'Mumbai',85),
(3,'Priya',16,'Female',10,'Bangalore',92),
(4,'Amit',18,'Male',12,'Chennai',69),
(5,'Sneha',17,'Female',11,'Pune',88),
(6,'Ravi',16,'Male',10,'Hyderabad',74),
(7,'Neha',18,'Female',12,'Delhi',81),
(8,'Vikram',17,'Male',11,'Mumbai',55),
(9,'Divya',16,'Female',10,'Bangalore',90),
(10,'Sahil',18,'Male',12,'Chennai',73);


select *from men;

select * from men where city='Delhi';
select count (*) from men;

select avg(marks) as avg_marks from men;
select * from men where marks>80;
SELECT grade, COUNT(*) AS total_students FROM men GROUP BY grade;

SELECT name, marks FROM men
ORDER BY marks desc;

select name, grade,marks from men
order by marks ASC limit 5;



SELECT * FROM men WHERE age = (SELECT MIN(age) FROM men)
order by marks ASC limit 5;

select*from men where age= (select max(age )from men)
order by age desc limit 6;

SELECT city,AVG(marks) AS avg_marks FROM men GROUP BY city;

select * from  men where gender= 'Female' and grade ='11';

SELECT * FROM men
WHERE marks BETWEEN 75 AND 90;


select *from men
where marks between 60 and 80;









