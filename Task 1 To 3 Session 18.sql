create database resturant_zomato ; 
use resturant_zomato ; 

create table zomatoStyle_resturantReviews ( 
resturant_name varchar (100) not null ,
avreage_rating decimal (2,1) ,
total_reviews int ) ; 

insert into zomatoStyle_resturantReviews (resturant_name,avreage_rating,total_reviews) 
values 
('The Food House', 4.2, 1250),
('Pizza Palace', 4.5, 2300),
('Spice Garden', 3.8, 850),
('Burger Hub', 4.1, 1750),
('Royal Dhaba', 4.3, 980),
('Urban Tadka', 4.6, 2100),
('Tasty Bites', 3.5, 650),
('Food Junction', 4.8, 3200),
('Green Leaf Cafe', 3.9, 740),
('Punjabi Zaika', 4.4, 1450),
('The Italian Corner', 4.7, 1850),
('South Spice', 3.2, 560),
('Chai and Snacks', 4.0, 900),
('Royal Kitchen', 4.9, 2800),
('Street Food Hub', 2.8, 420);

create view TopRatedResturants as 
select 
resturant_name ,
avreage_rating , 
total_reviews 
from zomatoStyle_resturantReviews ; 

select * from TopRatedResturants 
where avreage_rating > 4 ;

------ Task 2 ---- 

CREATE TABLE resturants (
    resturant_name VARCHAR(100) PRIMARY KEY,
    city VARCHAR(100)
);

INSERT INTO resturants (resturant_name, city)
VALUES
('The Food House', 'Ahmedabad'),
('Pizza Palace', 'Surat'),
('Spice Garden', 'Vadodara'),
('Burger Hub', 'Ahmedabad'),
('Royal Dhaba', 'Rajkot'),
('Urban Tadka', 'Surat'),
('Tasty Bites', 'Vadodara'),
('Food Junction', 'Ahmedabad'),
('Green Leaf Cafe', 'Gandhinagar'),
('Punjabi Zaika', 'Surat'),
('The Italian Corner', 'Rajkot'),
('South Spice', 'Vadodara'),
('Chai and Snacks', 'Ahmedabad'),
('Royal Kitchen', 'Gandhinagar'),
('Street Food Hub', 'Surat');

CREATE OR REPLACE VIEW TopRatedRestaurants AS
SELECT
    zr.resturant_name,
    zr.avreage_rating,
    zr.total_reviews,
    s.city
FROM zomatoStyle_resturantReviews AS zr
INNER JOIN resturants AS s
    ON zr.resturant_name = s.resturant_name
WHERE zr.avreage_rating > 4.0;

SELECT *
FROM TopRatedRestaurants;


---- Task 3 ------- 

update TopRatedResturants 
set avreage_rating = 4.9
where resturant_name = 'The Food House' ;


--------- The TopRatedRestaurants view combines data from two tables using an INNER JOIN.
 MySQL restricts updates on certain views, particularly join views, 
 because it may be unclear which underlying table should be modified. 
 Therefore, the average rating should be updated directly in the original zomatoStyle_resturantReviews table instead.-------