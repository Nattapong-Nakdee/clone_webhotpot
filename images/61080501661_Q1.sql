create database quiz1;
create table quiz1.members(
	name 		varchar(30),
    lastname 	varchar(30),
    age 		int,
    email 		varchar(100),
    height 		int,
    weight 		int,
    nationality varchar(30),
    telephone 	varchar(15),
    gradeAvg 	float,
    role 		varchar(100)
);

insert into quiz1.members (name ,lastname, age, email, height, weight, nationality, telephone, gradeAvg, role) values
('David', 'Harrison', 27, 'david@hotmail.com', 171, 80, 'Americans', '024761145', 4.00, 'Student'),
('Gray', 'Lei', 25, 'g-lei2517@hotmail.com', 165, 70, 'Chinese', '024761146', -1.02, 'Senior Student'),
('Edward', 'Erico', 24, 'edwardT@hotmail.com', 179, 110, 'Americans', '024761147', 3.30, 'Student'),
('Sompoch', 'Boonrumrong', 26, 'none@hotmail.com', 173, 80, 'Thai', '024761148', 3.62, 'Padawan'),
('akamoto', 'Arigato', 18,  'none@hotmail.com', 178, 90, 'Japanese', null, 2.80, 'Padawan');

select * from quiz1.members;

select sum(age)as TotalAge from quiz1.members;

select sum(age)as AmericansAge from quiz1.members where nationality = 'Americans' group by nationality;

select  count(*)as TotalCountMember from quiz1.members;

select count(*) as Student_F from quiz1.members where gradeAvg  <  2.00;

select concat(name,"  ",lastname) as name_lastname ,gradeAvg, telephone from quiz1.members;

select concat(name,"  ",lastname) as name_lastname, gradeAvg, telephone from quiz1.members where gradeAvg > 2.85;

select distinct(role) FROM quiz1.members;

select count(role) as total_position, role from quiz1.members group by role;

select name, lastname, age, email, height, weight, substr(nationality,1,3), telephone, gradeAvg, role from quiz1.members order by nationality asc;

select name, lastname, age, email, height, weight, substr(nationality,1,3), telephone, gradeAvg, role from quiz1.members group by nationality order by nationality desc;

select name, lastname, age, email, height, weight, ucase(substr(nationality,1,3)), telephone, gradeAvg, role from quiz1.members order by nationality asc;

select name, lastname, age, email, height, weight, lcase(substr(nationality,1,3)), telephone, gradeAvg, role from quiz1.members order by nationality asc;

select ucase(name), ucase(lastname), age, ucase(email), height, weight, ucase(substr(nationality,1,3)), telephone, gradeAvg, ucase(role) from quiz1.members order by nationality asc;
