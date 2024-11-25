create database retaildb;
use retaildb;

create table Products (id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null,
price DECIMAL(10, 2) Not Null, Check (price > 0),
stock INT Not Null, Check (Stock >= 0));
 
 create table Suppliers (id INT Primary Key Auto_Increment,
 name VARCHAR(50) Not Null,
 contact VARCHAR(50));
 
create table Sales(id INT Primary Key Auto_Increment,
product_id INT, Foreign Key(product_id) References Products(id),
date DATE Not Null,
quantity INT Not Null, Check (quantity > 0),
total_price DECIMAL(10, 2) Not Null);

insert into products(name,price,stock) values("abc",150,15),("xyz",100,7),("mno",75,20),("def",63,5);

insert into suppliers values(101,"l&t","8554721689"),(102,"AT soln","8874563219"),(103,"mino soln","9856321475"),(104,"zoho","9754812368");

insert into sales values(11,1,"2024-10-10",17,450.25);
insert into sales(product_id,date,quantity,total_price) values(2,"2024-11-09",28,5783.65),(3,"2023-05-05",40,8050.00),(4,"2021-06-07",50,7500.50);

select*from products;
select*from suppliers;
select*from sales;

select*from products where stock < 10;

select products.name as prod_name,
sales.total_price as total_price from products join sales on products.id=sales.product_id; 

select product_id,sum(quantity) from sales group by product_id;
