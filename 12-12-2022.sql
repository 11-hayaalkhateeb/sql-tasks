CREATE TABLE customers (
    customerID int,
    LastName varchar(25),
    FirstName varchar(25),

		
);
INSERT INTO customers values (11,'haya','alkhateeb');
INSERT INTO customers values (28,'rahma','obidat');
	select * from customers;

CREATE TABLE orders (
   Orderid int,
   totel float,
   price float,
   orderdate date,
); 

INSERT INTO  orders values (1,3,50,'2022-12-12');

	select * from orders;

CREATE TABLE Products(
proudectid int ,
proudectname varchar(25),
quantity int,
price float,
);

INSERT INTO Products values (1,'pc',3,1000);
select * from Products;

CREATE TABLE Employees(
Employeesid int ,
Employeesname varchar(25),
selary int,
department varchar(35),
);

INSERT INTO Employees values (4,'Rama',7000,'finance');
select * from Employees;