create table customers_ (
customer_id  int identity (1,1) primary key ,
customer_name varchar(25) ,
adress varchar(25)

);
insert into  customers_( customer_name , adress) values ('ayah','irbid'), ('rama','amman'),('lujain','irbid'),('rahma','dubai'),('batool','amman'),('haya','irbid');
select * from customers_;

create table orders_ (
orders_id  int identity (1,1) primary key ,
order_date date,
totel int ,
customer_id int foreign key references customers_ (customer_id) 

);
insert into  orders_ (order_date  , totel ,customer_id) values ('2022-12-13',50,1), ('2022-12-13',50,3),('2022-12-13',50,4);
select * from orders_ ;

create table proudect_(
proudect_id  int identity (1,1) primary key ,
proudect_name varchar (25),
price float ,
quantity int ,
orders_id int foreign key references orders_(orders_id ) 

);
insert into  proudect_(proudect_name   , price ,quantity ,orders_id ) values ('book',50,2,1), ('bag',5,3,3),('t-shirt',15,3,1),('t-shirt',15,3,2);
select * from proudect_;



select * 
from customers_ 
join orders_ on customers_.customer_id =  orders_.customer_id
join proudect_ on orders_.orders_id=proudect_.orders_id;

select * 
from customers_ 
left join orders_ on customers_.customer_id =  orders_.customer_id
left join proudect_ on orders_.orders_id=proudect_.orders_id;


select * 
from customers_ 
right join orders_ on customers_.customer_id =  orders_.customer_id
right join proudect_ on orders_.orders_id=proudect_.orders_id;