create database librarydb;
use librarydb;

create table Books(id INT Primary Key Auto_Increment,
title VARCHAR(100) Not Null, author VARCHAR(50) Not Null,
published_year YEAR Not Null, genre VARCHAR(30));

create table Members(id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null, membership_date DATE Not Null);

create table Borrowing (id INT Primary Key Auto_Increment,
book_id INT, Foreign Key(book_id) References Books(id),
member_id INT, Foreign Key(member_id) References Members(id),
borrow_date DATE Not Null, return_date DATE);

insert into Books values(101,'The Sun Also Rises', 'Ernest Hemingway', 1952, 'novel'),(102,"War and Peace", "Leo Tolstoy",1964,"fiction"),
(103,"Treasure Island","R.L. Stevenson",1987,"novel"),(104,"Time Machine","H.G Wells",2000, "novel"),(105,"August 1914","Alexander Solzhenitsyn",2002,"fiction");

insert into members values(111,"ram","2022-10-05"),(112,"raji","2021-11-06"),(113,"priya","2021-06-11"),(114,"devi","2019-10-15");

insert into borrowing values(1,101,111,"2024-01-01","2024-02-02"),(2,102,112,"2024-02-03","2024-03-06"),(3,103,113,"2025-04-07",null);

select*from books;
select*from members;
select*from borrowing;

select * from borrowing join books on books.id=borrowing.book_id inner join members on borrowing.member_id= members.id; 

select borrow_date,return_date,book_id,member_id,
 books.title as book_title, members.name as member_name 
 from borrowing inner join books on books.id=borrowing.book_id 
 inner join members on borrowing.member_id= members.id;
 
select book_id,count(*) from borrowing group by member_id ;

SELECT members.name AS member_name, 
COUNT(borrowing.book_id) AS books_borrowed FROM borrowing 
INNER JOIN members ON borrowing.member_id = members.id GROUP BY members.name;

