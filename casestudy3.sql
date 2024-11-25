create database studentdb;
use studentdb;

create table students(id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null,age INT Not Null,
email VARCHAR(50) Not Null Unique);

create table Courses(id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null);

create table Enrollments(student_id INT, Foreign Key(student_id) References Students(id),
course_id INT, Foreign Key(course_id) References Courses(id),
grade CHAR(1), Primary Key (`student_id`, `course_id`));

insert into students values(101,"sailu",25,"sailu10@gmail.com"),(102,"swetha",15,"swetha20@gmail.com"),
(103,"viji",18,"viji10@gmail.com"),(104,"keke",24,"keke30@gmail.com");

insert into courses values(1,"python"),(2,"c++"),(3,"data analysis");

insert into enrollments values (101,1,"O"),(102,2,"A"),(103,3,"O");

select*from students;
select*from courses;
select*from enrollments;

select students.name as stud_name,
courses.name as course_name from enrollments 
join students on students.id=enrollments.student_id 
inner join courses on courses.id=enrollments.course_id;

select courses.name as course_name,
count(students.name) as stud_name from enrollments 
join students on students.id=enrollments.student_id 
inner join courses on courses.id=enrollments.course_id group by courses.name;