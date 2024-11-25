create database learningdb;
use learningdb;

 Create table Courses (id INT Primary Key Auto_Increment,
 title VARCHAR(100) Not Null,
 description TEXT);
 
create table Instructors (id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null,
expertise VARCHAR(50) Not Null);

create table Students (id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null,
email VARCHAR(50) Not Null Unique);

create table Enrollments (student_id INT, Foreign Key(student_id) References Students(id),
course_id INT, Foreign Key(course_id) References Courses(id),
enrollment_date DATE Not Null,
Primary Key (`student_id`, `course_id`));

insert into courses values(1,"python","learning python in 30 days"),(2,"mysql","mysql practicals"),(3,"powerbi","powerbi dashboard creation");

insert into instructors values(111,"swetha","python"),(112,"nikil","powerbi"),(113,"keke","mysql");

insert into students values(101,"sailu","sailu@gmail.com"),(102,"atchu","atchu@gmail.com"),(103,"goms","goms@gmail.com");

insert into enrollments values(101,1,"2024-10-20"),(102,2,"2024-11-19"),(103,3,"2024-10-15");


select*from courses;
select*from instructors;

select enrollment_date as date,students.name as student_name, courses.title as course_title from enrollments join courses on courses.id=enrollments.course_id
inner join students on students.id=enrollments.student_id;

select courses.title as course_title, 
COUNT(enrollments.student_id) as enrollments_strength 
from enrollments 
join courses on courses.id = enrollments.course_id 
inner join students on students.id = enrollments.student_id 
group by courses.title;

