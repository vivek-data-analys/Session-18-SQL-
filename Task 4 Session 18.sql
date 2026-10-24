create database OrderSummary ; 
use OrderSummary ; 

create table Swiggy_Styles ( 
order_id int primary key , 
order_name varchar (100) not null , 
order_date date , 
food_orders varchar (100) not null , 
order_amount int ) ; 

insert into Swiggy_Styles (order_id,order_name,order_date,food_orders,order_amount) 
values 

(1, 'Paneer Tikka', '2026-08-01', 'North Indian', 250),
(2, 'Veg Biryani', '2026-08-02', 'Biryani', 180),
(3, 'Cheese Pizza', '2026-08-03', 'Pizza', 350),
(4, 'Masala Dosa', '2026-08-04', 'South Indian', 120),
(5, 'Veg Burger', '2026-08-05', 'Fast Food', 150),
(6, 'Chicken Biryani', '2026-08-06', 'Biryani', 280),
(7, 'Pav Bhaji', '2026-08-07', 'Street Food', 100),
(8, 'Chole Bhature', '2026-08-08', 'North Indian', 160),
(9, 'Hakka Noodles', '2026-08-09', 'Chinese Food', 200),
(10, 'Gujarati Thali', '2026-08-10', 'Gujarati Food', 220),
(11, 'Margherita Pizza', '2026-08-11', 'Pizza', 300),
(12, 'Veg Sandwich', '2026-08-12', 'Sandwich', 130),
(13, 'Dal Khichdi', '2026-08-13', 'Gujarati Food', 140),
(14, 'French Fries', '2026-08-14', 'Fast Food', 90),
(15, 'Mango Milkshake', '2026-08-15', 'Beverages', 110),
(16, 'Veg Pulao', '2026-08-16', 'Rice', 170),
(17, 'Paneer Pizza', '2026-08-17', 'Pizza', 320),
(18, 'Idli Sambhar', '2026-08-18', 'South Indian', 100),
(19, 'Cheese Sandwich', '2026-08-19', 'Sandwich', 160),
(20, 'Chicken Burger', '2026-08-20', 'Fast Food', 240),
(21, 'Aloo Paratha', '2026-08-21', 'North Indian', 120),
(22, 'Veg Fried Rice', '2026-08-22', 'Chinese Food', 190),
(23, 'Pav Bhaji', '2026-08-23', 'Street Food', 110),
(24, 'Paneer Roll', '2026-08-24', 'Rolls', 180),
(25, 'White Sauce Pasta', '2026-08-25', 'Italian Food', 260),
(26, 'Veg Manchurian', '2026-08-26', 'Chinese Food', 210),
(27, 'Masala Dosa', '2026-08-27', 'South Indian', 130),
(28, 'Veg Thali', '2026-08-28', 'Gujarati Food', 200),
(29, 'Chicken Sandwich', '2026-08-29', 'Sandwich', 220),
(30, 'Cheese Burger', '2026-08-30', 'Fast Food', 190),
(31, 'Veg Biryani', '2026-08-31', 'Biryani', 180),
(32, 'Farmhouse Pizza', '2026-09-01', 'Pizza', 380),
(33, 'Chole Bhature', '2026-09-02', 'North Indian', 170),
(34, 'Hakka Noodles', '2026-09-03', 'Chinese Food', 210),
(35, 'Paneer Butter Masala', '2026-09-04', 'North Indian', 290),
(36, 'Cold Coffee', '2026-09-05', 'Beverages', 140),
(37, 'Veg Momos', '2026-09-06', 'Chinese Food', 150),
(38, 'Cheese Garlic Bread', '2026-09-07', 'Italian Food', 180),
(39, 'Gujarati Thali', '2026-09-08', 'Gujarati Food', 230),
(40, 'Chocolate Milkshake', '2026-09-09', 'Beverages', 160);


create view DailyorderSummrys as  
select 
 order_date , 
   count(*) as total_food_orders , 
   sum(order_amount) as total_revenue 
   from Swiggy_Styles 
where order_date >= curdate() - interval 30 day 
 and order_date <= curdate() 
 group by order_date ; 
 
select * from  DailyorderSummrys ;
 
