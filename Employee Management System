
CREATE database EmployementManagement;
use employementmanagement;

create table department(id int primary key auto_increment, name VARCHAR(50) not null);

create table employee 
(id int primary key auto_increment,
name VARCHAR(50) not null, age INT not null, 
gender VARCHAR(10) not null, salary INT not null, 
Check (Salary > 30000),
department_id INT, foreign key(department_id) References Department(id));

create table projects(id int primary key auto_increment, 
name VARCHAR(50) not null,
budget INT not null, Check (Budget > 10000));

create table Employee_Projects
(employee_id INT, Foreign Key(employee_id) References employee(id),
project_id INT, Foreign Key(project_id) References projects(id));
alter table employee_projects add constraint primary key(employee_id,project_id);


create table attendance (id INT Primary Key Auto_Increment,
employee_id INT, Foreign Key(employee_id) References Employee(id),
date DATE not null,
status ENUM('Present', 'Absent', 'On Leave'));

insert into department values(1,'IT'),(2,'marketing'),(3,'HR'),(4,'cust service'),(5,'tech support');
delete from department;
insert into employee values (101,"niki",24,"Female",45000,1);
insert into employee values (102,"swetha",22,"Female",35000,2);
insert into employee values (103,"raj",44,"male",70000,3);
insert into employee values (104,"keke",32,"Female",65000,4);
insert into employee values (105,"ram",36,"male",155000,5);

set SQL_safe_updates=0;

insert into projects values (111,"abc project",15000),(112,"xyz project",12000),(113,"mno project",13000);
insert into projects values(114,"big project",55000);
insert into employee_projects values(101,111),(102,112),(103,113);

insert into attendance(employee_id,date,status) values(101,'2024-11-10',1),(102,'2024-10-06',1),(3,'2023-05-02',2);

select*from employee;
select*from employee_projects;
select*from attendance;
select*from department;
select*from projects;

select * from employee join department on employee.department_id=department.id where department.name="IT";

select*from projects where budget>50000;

select*from employee where salary>50000;

select department_id,count(*) from employee group by department_id;

SELECT attendance.date, attendance.status from attendance join employee on attendance.employee_id = employee.id where employee.id = 101;

select * from employee join employee_projects on employee.id=employee_projects.employee_id inner join projects on employee_projects.project_id=projects.id; 

select * from employee join department on employee.department_id=department.id where department.name="HR";

update employee join department on employee.department_id=department.id SET salary= salary*1.10 where department.name="HR";

update employee join department on employee.department_id=department.id SET department.name = "IT" where department.name="HR";

DELETE FROM attendance WHERE employee_id = 102;
DELETE FROM employee_projects WHERE employee_id = 102;
delete from employee where id=102;
select*from employee;

DELETE FROM employee_projects WHERE project_id = 112;
delete from projects where id=112;
select*from projects;

alter table employee add column email varchar(50) unique;
alter table employee add constraint check(age>18);
alter table employee alter gender set   default"unknown";
