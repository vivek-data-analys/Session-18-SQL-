create database flipkartStyle ; 
use FlipkartStyle ; 

create table  flipkart_Sales ( 
flipkart_id int primary key , 
order_date date ,
product_name varchar (100) not null , 
order_amount int );  

insert into flipkart_Sales (flipkart_id,order_date,product_name,order_amount) 
values 
(1, '2026-01-05', 'Smartphone', 15000),
(2, '2026-01-07', 'Laptop', 55000),
(3, '2026-01-10', 'Headphones', 2500),
(4, '2026-01-12', 'Smart TV', 32000),
(5, '2026-01-15', 'Washing Machine', 22000),
(6, '2026-02-02', 'Keyboard', 1200),
(7, '2026-02-05', 'Refrigerator', 28000),
(8, '2026-02-10', 'Smartphone', 18000),
(9, '2026-02-15', 'Laptop', 62000),
(10, '2026-02-20', 'Bluetooth Speaker', 3500),
(11, '2026-03-01', 'Smart TV', 40000),
(12, '2026-03-05', 'Headphones', 1800),
(13, '2026-03-10', 'Tablet', 22000),
(14, '2026-03-15', 'Smartphone', 12000),
(15, '2026-03-20', 'Washing Machine', 25000);

select sum(order_amount) as total_Sales from flipkart_Sales ; 

select 
order_date , 
product_name , 
order_amount 
from flipkart_Sales ; 

select 
product_name , sum(order_amount) as total_Sales 
from flipkart_Sales 
group by product_name  ; 