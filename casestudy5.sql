create database hospitaldb;
use hospitaldb;

create table Patients (id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null,
age INT Not Null,
gender VARCHAR(10),
contact VARCHAR(50));

create table Doctors (id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null,
specialization VARCHAR(50) Not Null);

create table Appointments (id INT Primary Key Auto_Increment,
patient_id INT, Foreign Key(patient_id) References Patients(id),
doctor_id INT, Foreign Key (doctor_id) References Doctors(id),
appointment_date DATE Not Null,
status ENUM('Scheduled', 'Completed', 'Cancelled'));

insert into patients(name,age,gender,contact) values("ram",35,"male","9854761237"),("sita",27,"female","8794563217"),("nikil",28,"female","8596231475");

insert into doctors values(101,"dr.raj","hemotologist"),(102,"dr.swetha","Cardiologist"),(103,"dr.kiruthika","Neurology");

insert into appointments(id,patient_id,doctor_id,appointment_date,status) values (11,1,102,"2024-11-18",2);
 insert into appointments(id,patient_id,doctor_id,appointment_date,status) values (12,2,101,"2024-11-20",1);
 insert into appointments(id,patient_id,doctor_id,appointment_date,status) values (13,3,102,"2024-12-18",3);
 select*from patients;
 select*from appointments;
 select*from doctors;

select doctors.name as doctor_name, patients.name as patient_name,
appointments.appointment_date as appointment_date from appointments join doctors on doctors.id=appointments.doctor_id 
inner join patients on patients.id= appointments.patient_id;

select doctors.name as doctor_name,
count(appointments.id) as appoinments from appointments
join doctors on doctors.id=appointments.doctor_id
group by doctors.name;

