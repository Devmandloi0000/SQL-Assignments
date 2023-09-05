create database first_assignment;

use first_assignment;

create table CITY (ID int, NAME varchar(17) , COUNTRYCODE varchar(3), DISTRICT varchar(30), POPULATION int);

show tables;

select * from city;

/*
Q1. Query all columns for all American cities in the CITY table with populations larger than 100000.
The CountryCode for America is USA.
The CITY table is described as follows:
*/

#SOLUTION :- 
select * from city where COUNTRYCODE = "USA" and POPULATION >= 100000;

/*
Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
The CountryCode for America is USA.
The CITY table is described as follows
*/

#SOLUTION :- 
select * from city;
select NAME from city where POPULATION > 120000 and COUNTRYCODE = "USA";


/* Q3. Query all columns (attributes) for every row in the CITY table.
The CITY table is described as follows:
*/

#SOLUTION :- 
select * from city;

/* Q4. Query all columns for a city in CITY with the ID 1661.
The CITY table is described as follows:
*/

#SOLUTION :- 
select * from city where ID=1661;

/* Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is
JPN.
The CITY table is described as follows:
*/

#SOLUTION :- 
select * from city where COUNTRYCODE= 'JPN';

/*Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is
JPN.
The CITY table is described as follows:
*/

#SOLUTION :- 
select distinct(DISTRICT) from city where COUNTRYCODE='JPN' ;
select * from city where COUNTRYCODE='JPN' ;


/* Q7. Query a list of CITY and STATE from the STATION table.
The STATION table is described as follows:
*/

#SOLUTION :- 
use first_assignment;
select * from station ;


ALTER TABLE station
change `Station Table` ID int;

ALTER TABLE station
CHANGE `MyUnknownColumn` CITY VARCHAR(25);

ALTER TABLE station
CHANGE `MyUnknownColumn_[0]` STATE VARCHAR(5);

ALTER TABLE station
CHANGE `MyUnknownColumn_[1]` LAT_N int;

ALTER TABLE station
CHANGE `MyUnknownColumn_[2]` LONG_W int;

desc station;

#>> 
select CITY,STATE from station 
group by CITY,STATE
ORDER BY CITY;

/*
Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results
in any order, but exclude duplicates from the answer.
The STATION table is described as follows:
*/

#SOLUTION :-
select distinct(CITY),ID from station where MOD(ID,2)=0;

/* 
Q9. Find the difference between the total number of CITY entries in the table and the number of
distinct CITY entries in the table.
The STATION table is described as follows:
*/

#SOLUTION :- 
select count(CITY) "TOTAL NUMBER OF CITY" , count(distinct(CITY)) "NUMBER OF DISTINCT CITY"  from station;

select count(CITY) - count(distinct(CITY))   from station;

/*
Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:
where LAT_N is the northern latitude and LONG_W is the western longitude.
Sample Input
For example, CITY has four entries: DEF, ABC, PQRS and WXY.
Sample Output
ABC 3
PQRS 4
*/

#SOLUTION :-
select max(length(CITY)) from station;
select min(length(CITY)) from station;
select length(CITY) "LENGHT_CITY" , CITY from station;

/* 
Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
cannot contain duplicates.
Input Format
The STATION table is described as follows:
*/

#SOLUTION :- 
select distinct(CITY) from station where CITY like 'a%' or CITY like 'e%' or CITY like 'i%' or CITY like 'o%' or CITY like 'u%';

select count(distinct(CITY)) "count of city" from station where CITY like 'a%' or CITY like 'e%' or CITY like 'i%' or CITY like 'o%' or CITY like 'u%';

/* 
Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
contain duplicates.
Input Format
The STATION table is described as follows:
*/

#SOLUTION :- 
select distinct(CITY) from station where CITY like '%a' or CITY like '%e' or CITY like '%i' or CITY like '%o' or CITY like '%u';

/*
Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot
contain duplicates.
Input Format
The STATION table is described as follows:
*/

#SOLUTION :- 
select distinct(CITY) from station where CITY not like 'a%' or CITY not like 'e%' or CITY not like 'i%' or CITY not like 'o%' or CITY not like 'u%';

select count(distinct(CITY)) "total no of city" from station where CITY not like 'a%' or CITY not like 'e%' or CITY not like 'i%' or CITY not like 'o%' or CITY not like 'u%';

/*
Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot
contain duplicates.
Input Format
The STATION table is described as follows:
*/

# SOLUTION :- 
select distinct(CITY) from station where CITY not like '%a' or CITY not like '%e' or CITY not like '%i' or CITY not like '%o' or CITY not like 'u%';


/* 
15. Query the list of CITY names from STATION that either do not start with vowels or do not end
with vowels. Your result cannot contain duplicates.
Input Format
The STATION table is described as follows:
*/

# SOLUTION :- 
select count(CITY) from station;
select distinct(CITY) from station where CITY not like 'a%' and CITY not like 'e%' and CITY not like 'i%' and CITY not like 'o%' and CITY not like 'u%' and CITY not like '%a' and CITY not like '%e' and CITY not like '%i' and CITY not like '%o' and CITY not like '%u' order by CITY asc;

select count(distinct(CITY)) from station where CITY not like 'a%' and CITY not like 'e%' and CITY not like 'i%' and CITY not like 'o%' and CITY not like 'u%' and CITY not like '%a' and CITY not like '%e' and CITY not like '%i' and CITY not like '%o' and CITY not like '%u' order by CITY asc;


/* 
Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with
vowels. Your result cannot contain duplicates.
Input Format
The STATION table is described as follows:
*/

# SOLUTION :- 
select count(CITY) from station;
select distinct(CITY) from station where CITY not like 'a%' and CITY not like 'e%' and CITY not like 'i%' and CITY not like 'o%' and CITY not like 'u%' and CITY not like '%a' and CITY not like '%e' and CITY not like '%i' and CITY not like '%o' and CITY not like '%u' order by CITY asc;

select count(distinct(CITY)) from station where CITY not like 'a%' and CITY not like 'e%' and CITY not like 'i%' and CITY not like 'o%' and CITY not like 'u%' and CITY not like '%a' and CITY not like '%e' and CITY not like '%i' and CITY not like '%o' and CITY not like '%u' order by CITY asc;

/*
Q17.
Table: Product
Column Name Type
product_id int
product_name varchar
unit_price int
product_id is the primary key of this table.
Each row of this table indicates the name and the price of each product.
Table: Sales
Column Name Type
seller_id int
product_id int
buyer_id int
sale_date date
quantity int
price int
This table has no primary key, it can have repeated rows.
product_id is a foreign key to the Product table.
Each row of this table contains some information about one sale.
Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is,
between 2019-01-01 and 2019-03-31 inclusive.
Return the result table in any order.
The query result format is in the following example.
Input:
Product table:
product_id product_name unit_price
1 S8 1000
2 G4 800
3 iPhone 1400
Sales table:
seller_id product_id buyer_id sale_date quantity price
1 1 1 2019-01-21 2 2000
1 2 2 2019-02-17 1 800
2 2 3 2019-06-02 1 800
3 3 4 2019-05-13 2 2800
Output:
product_id product_name
1 S8
Explanation:
The product with id 1 was only sold in the spring of 2019.
The product with id 2 was sold in the spring of 2019 but was also sold after the spring of 2019.
The product with id 3 was sold after spring 2019.
We return only product 1 as it is the product that was only sold in the spring of 2019
*/


create table Product (
product_id int,
product_name varchar(25),
unit_price int,
primary key (product_id));

create table Sales(
seller_id int,
product_id int,
buyer_id int,
sale_date date,
quantity int,
price int,
foreign key(product_id) references Product(product_id));

show tables;
desc Product;

insert into product values
(1 ,'S8', 1000),
(2,'G4',800),
(3, 'iPhone',1400);

select * from Product;

insert into Sales values
(1, 1, 1, '2019-01-21', 2, 2000),
(1 ,2, 2, '2019-02-17', 1, 800),
(2 ,2 ,3 ,'2019-06-02', 1 ,800),
(3 ,3 ,4 ,'2019-05-13' ,2 ,2800);

select * from Sales;
desc Sales;

#SOLUTION :- 
select a.product_id , a.product_name ,b.sale_date
from product a , sales b
where a.product_id = b.product_id
group by a.product_id
having b.sale_date between '2019-01-01' and '2019-03-31';


/*
Q18.
Table: Views
Column Name Type
article_id int
author_id int
viewer_id int
view_date date
There is no primary key for this table, it may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some
date.
Note that equal author_id and viewer_id indicate the same person.
Write an SQL query to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.
The query result format is in the following example.
Input:
Views table:
article_id author_id viewer_id view_date
1 3 5 2019-08-01
1 3 6 2019-08-02
2 7 7 2019-08-01
2 7 6 2019-08-02
4 7 1 2019-07-22
3 4 4 2019-07-21
3 4 4 2019-07-21
Output:
id
4
7
*/

create table Views ( 
article_id int,
author_id int,
viewer_id int,
view_date date);

insert into Views values 
(1 ,3 ,5 ,'2019-08-01'),
(1, 3, 6, '2019-08-02'),
(2 ,7 ,7 ,'2019-08-01'),
(2, 7, 6, '2019-08-02'),
(4 ,7 ,1, '2019-07-22'),
(3, 4, 4, '2019-07-21'),
(3 ,4 ,4,'2019-07-21');

desc Views;
select * from Views;

# SOLUTION :- 
select author_id from Views 
where author_id = viewer_id
group by author_id 
order by author_id;

/*
Q19.
Table: Delivery
Column Name Type
delivery_id int
customer_id int
order_date date
customer_pref_delivery_date date
delivery_id is the primary key of this table.
The table holds information about food delivery to customers that make orders at some date and
specify a preferred delivery date (on the same order date or after it).
If the customer's preferred delivery date is the same as the order date, then the order is called
immediately; otherwise, it is called scheduled.
Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal
places.
The query result format is in the following example.
Input:
Delivery table:
delivery_id customer_id order_date
customer_pref_
delivery_date
1 1 2019-08-01 2019-08-02
2 5 2019-08-02 2019-08-02
3 1 2019-08-11 2019-08-11
4 3 2019-08-24 2019-08-26
5 4 2019-08-21 2019-08-22
6 2 2019-08-11 2019-08-13
Output:
immediate_percentage
33.33
Explanation: The orders with delivery id 2 and 3 are immediate while the others are scheduled.
*/

create table Delivery (
delivery_id int,
customer_id int,
order_date date,
customer_pref_delivery_date date,
primary key (delivery_id));

desc Delivery;

insert into Delivery values 
(1 ,1 ,'2019-08-01' ,'2019-08-02'),
(2, 5 ,'2019-08-02', '2019-08-02'),
(3 ,1 ,'2019-08-11' ,'2019-08-11'),
(4, 3, '2019-08-24' ,'2019-08-26'),
(5 ,4, '2019-08-21' ,'2019-08-22'),
(6, 2, '2019-08-11' ,'2019-08-13');

# SOLUTION :- 
select round(count(order_date)*100 / (select count(order_date) from Delivery),2) "immediate_percentage"
from Delivery
where order_date = customer_pref_delivery_date ;

/*
Q20.
Table: Ads
Column Name Type
ad_id int
user_id int
action enum
(ad_id, user_id) is the primary key for this table.
Each row of this table contains the ID of an Ad, the ID of a user, and the action taken by this user
regarding this Ad.
The action column is an ENUM type of ('Clicked', 'Viewed', 'Ignored').
A company is running Ads and wants to calculate the performance of each Ad.
Performance of the Ad is measured using Click-Through Rate (CTR) where:
Write an SQL query to find the ctr of each Ad. Round ctr to two decimal points.
Return the result table ordered by ctr in descending order and by ad_id in ascending order in case of a
tie.
The query result format is in the following example.
Input:
Ads table:
ad_id user_id action
1 1 Clicked
2 2 Clicked
3 3 Viewed
5 5 Ignored
1 7 Ignored
2 7 Viewed
3 5 Clicked
1 4 Viewed
2 11 Viewed
1 2 Clicked
Output:
ad_id ctr
1 66.67
3 50
2 33.33
5 0
Explanation:
for ad_id = 1, ctr = (2/(2+1)) * 100 = 66.67
for ad_id = 2, ctr = (1/(1+2)) * 100 = 33.33
for ad_id = 3, ctr = (1/(1+1)) * 100 = 50.00
for ad_id = 5, ctr = 0.00, Note that ad_id = 5 has no clicks or views.
Note that we do not care about Ignored Ads
*/

create table Ads 
(ad_id int,
user_id int,
action enum('Clicked', 'Viewed', 'Ignored'));

alter table Ads
add constraint primary key(ad_id , user_id);

desc Ads;

insert into Ads values
(1 ,1 ,'Clicked'),
(2 ,2 ,'Clicked'),
(3 ,3 ,'Viewed'),
(5, 5 ,'Ignored'),
(1 ,7 ,'Ignored'),
(2, 7, 'Viewed'),
(3 ,5 ,'Clicked'),
(1, 4, 'Viewed'),
(2 ,11 ,'Viewed'),
(1, 2, 'Clicked');

select * from Ads;

select ad_id  from Ads
where action = 'Clicked' or
action = 'Viewed'
group by ad_id; 


select ad_id , (select count(action) from Ads where action = 'Clicked') from Ads
group by ad_id; 


select ad_id from Ads 
where action in (select action from Ads where action = "Clicked" or action ='Viewed')
group by ad_id;


select ad_id , (select count(action) from Ads where action='Clicked' and ad_id = 3 )from Ads 
where action in (select action from Ads where action = "Clicked" or action ='Viewed')
group by ad_id;



/* 
Q21.
Table: Employee
Column Name Type
employee_id int
team_id int
employee_id is the primary key for this table.
Each row of this table contains the ID of each employee and their respective team.
Write an SQL query to find the team size of each of the employees.
Return result table in any order.
The query result format is in the following example.
Input:
Employee Table:
employee_id team_id
1 8
2 8
3 8
4 7
5 9
6 9
Output:
employee_id team_size
1 3
2 3
3 3
4 1
5 2
6 2
Explanation:
Employees with Id 1,2,3 are part of a team with team_id = 8.
An employee with Id 4 is part of a team with team_id = 7.
Employees with Id 5,6 are part of a team with team_id = 9.
*/

create table Employee (
employee_id int,
team_id int);

alter table Employee
add constraint primary key(employee_id);

desc Employee;

insert into Employee values
(1 ,8),
(2, 8),
(3, 8),
(4, 7),
(5, 9),
(6, 9);

select * from Employee;

# SOLUTION :-
select  employee_id,team_id,count(team_id) "team_size" from Employee
group by team_id
order by employee_id ;

SELECT e.employee_id, COUNT(*) AS team_size
FROM Employee e
JOIN Employee t
ON e.team_id = t.team_id
GROUP BY e.employee_id;

select * from Employee;

/*
Q22.
Table: Countries
Column Name Type
country_id int
country_name varchar
country_id is the primary key for this table.
Each row of this table contains the ID and the name of one country.
Table: Weather
Column Name Type
country_id int
weather_state int
day date
(country_id, day) is the primary key for this table.
Each row of this table indicates the weather state in a country for one day.
Write an SQL query to find the type of weather in each country for November 2019.
The type of weather is:
● Cold if the average weather_state is less than or equal 15,
● Hot if the average weather_state is greater than or equal to 25, and
● Warm otherwise.
Return result table in any order.
The query result format is in the following example.
Input:
Countries table:
country_id country_name
2 USA
3 Australia
7 Peru
5 China
8 Morocco
9 Spain
Weather table:
country_id weather_state day
2 15 2019-11-01
2 12 2019-10-28
2 12 2019-10-27
3 -2 2019-11-10
3 0 2019-11-11
3 3 2019-11-12
5 16 2019-11-07
5 18 2019-11-09
5 21 2019-11-23
7 25 2019-11-28
7 22 2019-12-01
7 20 2019-12-02
8 25 2019-11-05
8 27 2019-11-15
8 31 2019-11-25
9 7 2019-10-23
9 3 2019-12-23
Output:
country_name weather_type
USA Cold
Australia Cold
Peru Hot
Morocco Hot
China Warm
Explanation:
Average weather_state in the USA in November is (15) / 1 = 15 so the weather type is Cold.
Average weather_state in Australia in November is (-2 + 0 + 3) / 3 = 0.333 so the weather type is Cold.
Average weather_state in Peru in November is (25) / 1 = 25 so the weather type is Hot.
The average weather_state in China in November is (16 + 18 + 21) / 3 = 18.333 so the weather type is
warm.
Average weather_state in Morocco in November is (25 + 27 + 31) / 3 = 27.667 so the weather type is
Hot.
We know nothing about the average weather_state in Spain in November so we do not include it in the
result table.
*/


create table Countries (
country_id int,
country_name varchar(25),
primary key(country_id));

desc Countries;


create table Weather (
country_id int,
weather_state int,
day date
);

alter table Weather 
add constraint primary key(country_id,day);

desc Weather;

insert into Countries values
(2 ,'USA'),
(3 ,'Australia'),
(7 ,'Peru'),
(5 ,'China'),
(8 ,'Morocco'),
(9 ,'Spain');

select * from Countries;

insert into Weather values
(2 ,15 ,'2019-11-01'),
(2 ,12 ,'2019-10-28'),
(2, 12 ,'2019-10-27'),
(3 ,-2, '2019-11-10'),
(3 ,0 ,'2019-11-11'),
(3 ,3 ,'2019-11-12'),
(5, 16 ,'2019-11-07'),
(5 ,18 ,'2019-11-09'),
(5 ,21 ,'2019-11-23'),
(7 ,25 ,'2019-11-28'),
(7 ,22 ,'2019-12-01'),
(7 ,20 ,'2019-12-02'),
(8 ,25 ,'2019-11-05'),
(8 ,27 ,'2019-11-15'),
(8 ,31 ,'2019-11-25'),
(9 ,7 ,'2019-10-23'),
(9 ,3, '2019-12-23');

select * from Weather;
select * from Countries;


select c.country_name,
		case
			when avg(w.weather_state) >= 25 then 'Hot'
            when avg(w.weather_state) <= 15 then "Cold"
			else "Warm"
		end as weather_type
from Countries c 
left join  Weather w 
on c.country_id = w.country_id
where w.day between '2019-11-01' and '2019-11-30'
group by c.country_name;




/*
Q23.
Table: Prices
Column Name Type
product_id int
start_date date
end_date date
price int
(product_id, start_date, end_date) is the primary key for this table.
Each row of this table indicates the price of the product_id in the period from start_date to end_date.
For each product_id there will be no two overlapping periods. That means there will be no two
intersecting periods for the same product_id.
Table: UnitsSold
Column Name Type
product_id int
purchase_date date
units int
There is no primary key for this table, it may contain duplicates.
Each row of this table indicates the date, units, and product_id of each product sold.
Write an SQL query to find the average selling price for each product. average_price should be
rounded to 2 decimal places.
Return the result table in any order.
The query result format is in the following example.
Input:
Prices table:
product_id start_date end_date price
1 2019-02-17 2019-02-28 5
1 2019-03-01 2019-03-22 20
2 2019-02-01 2019-02-20 15
2 2019-02-21 2019-03-31 30
UnitsSold table:
product_id purchase_date units
1 2019-02-25 100
1 2019-03-01 15
2 2019-02-10 200
2 2019-03-22 30
Output:
product_id average_price
1 6.96
2 16.96
Explanation:
Average selling price = Total Price of Product / Number of products sold.
Average selling price for product 1 = ((100 * 5) + (15 * 20)) / 115 = 6.96
Average selling price for product 2 = ((200 * 15) + (30 * 30)) / 230 = 16.96
*/

create table Prices(
product_id int,
start_date date,
end_date date,
price int);

alter table Prices
add constraint primary key(product_id,start_date,end_date);

desc Prices;

create table UnitSold(
product_id int,
purchase_date date,
units int);

desc UnitSold;

insert into Prices values 
(1 ,'2019-02-17', '2019-02-28' ,5),
(1 ,'2019-03-01', '2019-03-22' ,20),
(2 ,'2019-02-01', '2019-02-20' ,15),
(2 ,'2019-02-21', '2019-03-31' ,30 );

select * from Prices;

insert into UnitSold values
(1, '2019-02-25' ,100),
(1, '2019-03-01' ,15),
(2, '2019-02-10' ,200),
(2, '2019-03-22' ,30);

select * from UnitSold;
select * from Prices;


# SOLUTION :-
select p.product_id, round(sum(u.units * p.price)/sum(u.units),2) as 'average_price'
from Prices p
join UnitSold u 
on p.product_id = u.product_id
group by p.product_id;


/*
Q24.
Table: Activity
Column Name Type
player_id int
device_id int
event_date date
games_played int
(player_id, event_date) is the primary key of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before
logging out on someday using some device.
Write an SQL query to report the first login date for each player.
Return the result table in any order.
The query result format is in the following example.
Input:
Activity table:
player_id device_id event_date games_played
1 2 2016-03-01 5
1 2 2016-05-02 6
2 3 2017-06-25 1
3 1 2016-03-02 0
3 4 2018-07-03 5
Output:
player_id first_login
1 2016-03-01
2 2017-06-25
3 2016-03-02
*/

create table Activity (
player_id int,
device_id int,
event_date date,
games_played int,
primary key(player_id, event_date));

desc Activity;

insert into Activity values
(1 ,2 ,'2016-03-01' ,5),
(1 ,2 ,'2016-05-02' ,6),
(2 ,3 ,'2017-06-25' ,1),
(3 ,1 ,'2016-03-02' ,0),
(3 ,4 ,'2018-07-03' ,5);


select * from Activity;
use first_assignment;

# SOLUTION :- 
select a.player_id , a.event_date as "event_loggin"
from Activity a
join Activity b 
on a.player_id = b.player_id
group by player_id
order by a.player_id;


/*
Q25.
Table: Activity
Column Name Type
player_id int
device_id int
event_date date
games_played int
(player_id, event_date) is the primary key of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before
logging out on someday using some device.
Write an SQL query to report the device that is first logged in for each player.
Return the result table in any order.
The query result format is in the following example.
Input:
Activity table:
player_id device_id event_date games_played
1 2 2016-03-01 5
1 2 2016-05-02 6
2 3 2017-06-25 1
3 1 2016-03-02 0
3 4 2018-07-03 5
Output:
player_id device_id
1 2
2 3
3 1
*/

# SOLTUION :- 

select * from Activity;

select player_id , device_id 
from Activity 
group by player_id 
order by player_id ;


/*
Q26.
Table: Products
Column Name Type
product_id int
product_name varchar
product_category varchar
product_id is the primary key for this table.
This table contains data about the company's products.
Table: Orders
Column Name Type
product_id int
order_date date
unit int
There is no primary key for this table. It may have duplicate rows.
product_id is a foreign key to the Products table.
unit is the number of products ordered in order_date.
Write an SQL query to get the names of products that have at least 100 units ordered in February 2020
and their amount.
Return result table in any order.
The query result format is in the following example.
Input:
Products table:
product_id product_name
product_catego
ry
1
Leetcode
Solutions Book
2
Jewels of
Stringology Book
3 HP Laptop
4 Lenovo Laptop
5 Leetcode Kit T-shirt
Orders table:
product_id order_date unit
1 2020-02-05 60
1 2020-02-10 70
2 2020-01-18 30
2 2020-02-11 80
3 2020-02-17 2
3 2020-02-24 3
4 2020-03-01 20
4 2020-03-04 30
4 2020-03-04 60
5 2020-02-25 50
5 2020-02-27 50
5 2020-03-01 50
Output:
product_name unit
Leetcode Solutions 130
Leetcode Kit 100
Explanation:
Products with product_id = 1 is ordered in February a total of (60 + 70) = 130.
Products with product_id = 2 is ordered in February a total of 80.
Products with product_id = 3 is ordered in February a total of (2 + 3) = 5.
Products with product_id = 4 was not ordered in February 2020.
Products with product_id = 5 is ordered in February a total of (50 + 50) = 100.
*/

create table Products (
product_id int,
product_name varchar(20),
product_category varchar(15),
primary key(product_id));

desc Products;

create table Orders(
product_id int,
order_date date,
unit int,
foreign key(product_id) references products(product_id));

desc Orders;

insert into Products values 
(1 ,'Leetcode Solutions' ,'Book'),
(2,"Jewels of Str", "Book"),
(3 ,"HP" ,"Laptop"),
(4, "Lenovo", "Laptop"),
(5 ,"Leetcode Kit" ,"T-shirt");

select * from Products;

insert into Orders values 
(1, '2020-02-05', 60),
(1, '2020-02-10', 70),
(2, '2020-01-18', 30),
(2, '2020-02-11', 80),
(3, '2020-02-17', 2),
(3, '2020-02-24', 3),
(4, '2020-03-01', 20),
(4, '2020-03-04',30),
(4, '2020-03-04', 60),
(5, '2020-02-25', 50),
(5, '2020-02-27', 50),
(5, '2020-03-01', 50)
;

select * from Orders;


# SOLUTION :-
select p.product_name ,sum(o.unit) "Total Order",
		case
			when sum(o.unit) >= 100 then "passed"
            else "Failed"
		end as "unit"
from Products p
join Orders o
on p.product_id = o.product_id
where o.order_date between "2020-02-01" and "2020-02-29"
group by p.product_name
having sum(o.unit) >= 100;

/*
Q27.
Table: Users
Column Name Type
user_id int
name varchar
mail varchar
user_id is the primary key for this table.
This table contains information of the users signed up in a website. Some emails are invalid.
Write an SQL query to find the users who have valid emails.
A valid e-mail has a prefix name and a domain where:
● The prefix name is a string that may contain letters (upper or lower case), digits, underscore
'_', period '.', and/or dash '-'. The prefix name must start with a letter.
● The domain is '@leetcode.com'.
Return the result table in any order.
The query result format is in the following example.
Input:
Users table:
user_id name mail
1 Winston
winston@leetc
ode.com
2 Jonathan jonathanisgreat
3 Annabelle
bella-@leetcod
e.com
4 Sally
sally.come@lee
tcode.com
5 Marwan
quarz#2020@le
etcode.com
6 David
david69@gmail
.com
7 Shapiro
.shapo@leetco
de.com
Output:
user_id name mail
1 Winston
winston@leetc
ode.com
3 Annabelle
bella-@leetcod
e.com
4 Sally
sally.come@lee
tcode.com
Explanation:
The mail of user 2 does not have a domain.
The mail of user 5 has the # sign which is not allowed.
The mail of user 6 does not have the leetcode domain.
The mail of user 7 starts with a period
*/

use first_assignment;

create table User (
user_id int,
name varchar(20),
mail varchar(50),
primary key(user_id));

desc User;

insert into User values
(1, 'Winston','winston@leetcode.com'),
(2, 'Jonathan' ,'jonathanisgreat'),
(3, 'Annabelle','bella-@leetcode.com'),
(4, 'Sally','sally.come@leetcode.com'),
(5, 'Marwan','quarz#2020@leetcode.com'),
(6, 'David','david69@gmail.com'),
(7, 'Shapiro','.shapo@leetcode.com');

select * from User;

# SOLUTION :-
select user_id , name , mail from user
where mail like '%@leetcode.com'
and mail not like '.%' 
and mail not like '%*%'
and mail not like '%#%';


/*
Q28.
Table: Customers
Column Name Type
customer_id int
name varchar
country varchar
customer_id is the primary key for this table.
This table contains information about the customers in the company.
Table: Product
Column Name Type
customer_id int
name varchar
country varchar
product_id is the primary key for this table.
This table contains information on the products in the company.
price is the product cost.
Table: Orders
Column Name Type
order_id int
customer_id int
product_id int
order_date date
quantity int
order_id is the primary key for this table.
This table contains information on customer orders.
customer_id is the id of the customer who bought "quantity" products with id "product_id".
Order_date is the date in format ('YYYY-MM-DD') when the order was shipped.
Write an SQL query to report the customer_id and customer_name of customers who have spent at
least $100 in each month of June and July 2020.
Return the result table in any order.
The query result format is in the following example.
Input:
Customers table:
customer_id name country
1 Winston USA
2 Jonathan Peru
3 Moustafa Egypt
Product table:
product_id description price
10 LC Phone 300
20 LC T-Shirt 10
30 LC Book 45
40 LC Keychain 2
Orders table:
order_id customer_id product_id order_date quantity
1 1 10 2020-06-10 1
2 1 20 2020-07-01 1
3 1 30 2020-07-08 2
4 2 10 2020-06-15 2
5 2 40 2020-07-01 10
6 3 20 2020-06-24 2
7 3 30 2020-06-25 2
9 3 30 2020-05-08 3
Output:
customer_id name
1 Winston
Explanation:
Winston spent $300 (300 * 1) in June and $100 ( 10 * 1 + 45 * 2) in July 2020.
Jonathan spent $600 (300 * 2) in June and $20 ( 2 * 10) in July 2020.
Moustafa spent $110 (10 * 2 + 45 * 2) in June and $0 in July 2020.
*/

create table Customers (
customer_id int,
name varchar(15),
country varchar(15),
primary key(customer_id) );


create table Products1(
product_id int,
description varchar(20),
price int,
primary key(product_id));

create table orders1(
order_id int,
customer_id int,
product_id int,
order_date date,
quantity int,
primary key(order_id));

desc Customers ;
desc products1;
desc orders1;

insert into Customers values 
(1, 'Winston', 'USA'),
(2, 'Jonathan' ,'Peru'),
(3, 'Moustafa', 'Egypt');

insert into Products1 values 
(10, 'LC Phone', 300),
(20 ,'LC T-Shirt', 10),
(30, 'LC Book' ,45),
(40 ,'LC Keychain' ,2);

insert into orders1 values 
(1, 1 ,10 ,'2020-06-10' ,1),
(2 ,1 ,20 ,'2020-07-01' ,1),
(3 ,1 ,30 ,'2020-07-08' ,2),
(4 ,2 ,10 ,'2020-06-15' ,2),
(5 ,2, 40 ,'2020-07-01' ,10),
(6 ,3, 20 ,'2020-06-24' ,2),
(7 ,3 ,30 ,'2020-06-25' ,2),
(9 ,3, 30, '2020-05-08' ,3);

select * from customers;
select * from products1;
select * from orders1;

# SOLUTION :- 
select o.customer_id ,c.name from
customers c join products1 p join orders1 o
on c.customer_id = o.customer_id 
and p.product_id = o.product_id
group by c.name
order by c.customer_id;


select o.customer_id ,c.name ,sum(o.quantity * p.price) as "june month"
from customers c, products1 p ,orders1 o
where c.customer_id = o.customer_id 
and p.product_id = o.product_id
and order_date between "2020-06-01" and "2020-06-30"
#or order_date between "2020-07-01" and "2020-07-30"
group by c.name
having sum(o.quantity * p.price) >= 100
order by c.customer_id;

select o.customer_id ,c.name ,sum(o.quantity * p.price) as "july month"
from customers c, products1 p ,orders1 o
where c.customer_id = o.customer_id 
and p.product_id = o.product_id
and order_date between "2020-07-01" and "2020-07-30"
group by c.name
having sum(o.quantity * p.price) >= 100
order by c.customer_id;
 
/*
Q29.
Table: TVProgram
Column Name Type
program_date date
content_id int
channel varchar
(program_date, content_id) is the primary key for this table.
This table contains information about the programs on the TV.
content_id is the id of the program in some channel on the TV.
Table: Content
Column Name Type
content_id varchar
title varchar
Kids_content enum
content_type varchar
content_id is the primary key for this table.
Kids_content is an enum that takes one of the values ('Y', 'N') where:
'Y' means content for kids, otherwise 'N' is not content for kids.
content_type is the category of the content as movies, series, etc.
Write an SQL query to report the distinct titles of the kid-friendly movies streamed in June 2020.
Return the result table in any order.
The query result format is in the following example.
Input:
TVProgram table:
program_date content_id channel
2020-06-10 08:00 1 LC-Channel
2020-05-11 12:00 2 LC-Channel
2020-05-12 12:00 3 LC-Channel
2020-05-13 14:00 4 Disney Ch
2020-06-18 14:00 4 Disney Ch
2020-07-15 16:00 5 Disney Ch
Content table:
content_id title Kids_content content_type
1 Leetcode Movie N Movies
2 Alg. for Kids Y Series
3 Database Sols N Series
4 Aladdin Y Movies
5 Cinderella Y Movies
Output:
title
Aladdin
Explanation:
"Leetcode Movie" is not a content for kids.
"Alg. for Kids" is not a movie.
"Database Sols" is not a movie
"Alladin" is a movie, content for kids and was streamed in June 2020.
"Cinderella" was not streamed in June 2020.
*/


create table TVProgramm (
program_date datetime,
content_id int,
channel varchar(20),
primary key(program_date, content_id));

create table content(
content_id int,
title varchar(25),
Kids_content enum("Y","N"),
content_type varchar(15),
primary key(content_id));

insert into TVProgramm values
('2020-06-10 08:00', 1, 'LC-Channel'),
('2020-05-11 12:00' ,2, 'LC-Channel'),
('2020-05-12 12:00' ,3, 'LC-Channel'),
('2020-05-13 14:00', 4 ,'Disney Ch'),
('2020-06-18 14:00' ,4 ,'Disney Ch'),
('2020-07-15 16:00' ,5, 'Disney Ch')
;

insert into content values
(1 ,'Leetcode Movie','N' ,'Movies'),
(2 ,'Alg. for Kids' ,'Y' ,'Series'),
(3 ,'Database Sols' ,'N' ,'Series'),
(4 ,'Aladdin', 'Y', 'Movies'),
(5 ,'Cinderella', 'Y' ,'Movies');

select * from TVProgramm;
select * from content;

select c.title 
from content c 
join TVProgramm t
on c.content_id = t.content_id
where c.Kids_content = 'Y'
and c.content_type = "Movies"
and t.program_date between "2020-06-01" and "2020-06-30";

/*
Q30.
Table: NPV
Column Name Type
id int
year int
npv int
(id, year) is the primary key of this table.
The table has information about the id and the year of each inventory and the corresponding net
present value.
Table: Queries
Column Name Type
id int
year int
(id, year) is the primary key of this table.
The table has information about the id and the year of each inventory query.
Write an SQL query to find the npv of each query of the Queries table.
Return the result table in any order.
The query result format is in the following example.
Input:
NPV table:
id year npv
1 2018 100
7 2020 30
13 2019 40
1 2019 113
2 2008 121
3 2009 12
11 2020 99
7 2019 0
Queries table:
id year
1 2019
2 2008
3 2009
7 2018
7 2019
7 2020
13 2019
Output:
id year npv
1 2019 113
2 2008 121
3 2009 12
7 2018 0
7 2019 0
7 2020 30
13 2019 40
Explanation:
The npv value of (7, 2018) is not present in the NPV table, we consider it 0.
The npv values of all other queries can be found in the NPV table.
*/

create table NPV(
id int,
year int,
npv int,
primary key(id,year));

create table Queries(
id int,
year int,
primary key(id,year));

insert into NPV values
(1 ,2018 ,100),
(7 ,2020 ,30),
(13 ,2019 ,40),
(1 ,2019 ,113),
(2 ,2008 ,121),
(3 ,2009 ,12),
(11 ,2020 ,99),
(7 ,2019 ,0);

insert into Queries values
(1 ,2019),
(2 ,2008),
(3 ,2009),
(7 ,2018),
(7 ,2019),
(7 ,2020),
(13, 2019);

select * from Queries;
select * from NPV;


# SOLUTION :-
select q.id , q.year ,n.npv
from npv n 
join queries q
on n.id = q.id
and n.year = q.year
order by q.id;

/*
Q31.
Table: NPV
Column Name Type
id int
year int
npv int
(id, year) is the primary key of this table.
The table has information about the id and the year of each inventory and the corresponding net
present value.
Table: Queries
Column Name Type
id int
year int
(id, year) is the primary key of this table.
The table has information about the id and the year of each inventory query.
Write an SQL query to find the npv of each query of the Queries table.
Return the result table in any order.
The query result format is in the following example.
Input:
NPV table:
id year npv
1 2018 100
7 2020 30
13 2019 40
1 2019 113
2 2008 121
3 2009 12
11 2020 99
7 2019 0
Queries table:
id year
1 2019
2 2008
3 2009
7 2018
7 2019
7 2020
13 2019
Output:
id year npv
1 2019 113
2 2008 121
3 2009 12
7 2018 0
7 2019 0
7 2020 30
13 2019 40
Explanation:
The npv value of (7, 2018) is not present in the NPV table, we consider it 0.
The npv values of all other queries can be found in the NPV table.
*/

select * from NPV;
select * from Queries;

# SOLUTION :-
select q.id , q.year ,n.npv
from npv n 
join queries q
on n.id = q.id
and n.year = q.year
order by q.id;


/*
Q32.
Table: Employees
Column Name Type
id int
name varchar
id is the primary key for this table.
Each row of this table contains the id and the name of an employee in a company.
Table: EmployeeUNI
Column Name Type
id int
unique_id int
(id, unique_id) is the primary key for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the
company.
Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just
show null.
Return the result table in any order.
The query result format is in the following example.
Input:
Employees table:
id name
1 Alice
7 Bob
11 Meir
90 Winston
3 Jonathan
EmployeeUNI table:
id unique_id
3 1
11 2
90 3
Output:
unique_id name
null Alice
null Bob
2 Meir
3 Winston
1 Jonathan
Explanation:
Alice and Bob do not have a unique ID, We will show null instead.
The unique ID of Meir is 2.
The unique ID of Winston is 3.
The unique ID of Jonathan is 1.
*/

create table employees(
id int,
name varchar(10),
primary key(id));

create table EmployeeUNI(
id int,
unique_id int,
primary key(id,unique_id));

insert into employees values
(1 ,'Alice'),
(7, 'Bob'),
(11 ,'Meir'),
(90, 'Winston'),
(3 ,'Jonathan');

insert into EmployeeUNI values
(3 ,1),
(11, 2),
(90 ,3);

# SOLUTION :-
select eu.unique_id ,e.id, e.name 
from employees e
left join EmployeeUNI eu
on e.id = eu.id
order by e.id;


/*
Q33.
Table: Users
Column Name Type
id int
name varchar
id is the primary key for this table.
name is the name of the user.
Table: Rides
Column Name Type
id int
user_id int
distance int
id is the primary key for this table.
user_id is the id of the user who travelled the distance "distance".
Write an SQL query to report the distance travelled by each user.
Return the result table ordered by travelled_distance in descending order, if two or more users
travelled the same distance, order them by their name in ascending order.
The query result format is in the following example.
Input:
Users table:
id name
1 Alice
2 Bob
3 Alex
4 Donald
7 Lee
13 Jonathan
19 Elvis
Rides table:
id user_id distance
1 1 120
2 2 317
3 3 222
4 7 100
5 13 312
6 19 50
7 7 120
8 19 400
9 7 230
Output:
name
travelled_distan
ce
Elvis 450
Lee 450
Bob 317
Jonathan 312
Alex 222
Alice 120
Donald 0
Explanation:
Elvis and Lee travelled 450 miles, Elvis is the top traveller as his name is alphabetically smaller than
Lee.
Bob, Jonathan, Alex, and Alice have only one ride and we just order them by the total distances of the
ride.
Donald did not have any rides, the distance travelled by him is 0.
*/

create table users(
id int,
name varchar(10),
primary key(id));

create table Rides(
id int,
user_id int,
distance int,
primary key(id)
);

desc users;
desc Rides;


insert into users values
(1 ,'Alice'),
(2 ,'Bob'),
(3 ,'Alex'),
(4 ,'Donald'),
(7 ,'Lee'),
(13 ,'Jonathan'),
(19 ,'Elvis');

insert into Rides values
(1 ,1 ,120),
(2 ,2, 317),
(3 ,3 ,222),
(4 ,7, 100),
(5 ,13, 312),
(6 ,19, 50),
(7 ,7 ,120),
(8 ,19, 400),
(9 ,7 ,230);

select * from users;
select * from Rides;

# SOLTUION :- 
select u.name , sum(r.distance) as "travelled_distance"
from users u 
left join rides r
on r.user_id = u.id
group by u.name
order by sum(r.distance) desc ;


/*
Q34.
Table: Products
Column Name Type
product_id int
product_name varchar
product_category varchar
product_id is the primary key for this table.
This table contains data about the company's products.
Table: Orders
Column Name Type
product_id int
order_date date
unit int
There is no primary key for this table. It may have duplicate rows.
product_id is a foreign key to the Products table.
unit is the number of products ordered in order_date.
Write an SQL query to get the names of products that have at least 100 units ordered in February 2020
and their amount.
Return result table in any order.
The query result format is in the following example.
Input:
Products table:
product_id product_name
product_catego
ry
1
Leetcode
Solutions Book
2
Jewels of
Stringology Book
3 HP Laptop
4 Lenovo Laptop
5 Leetcode Kit T-shirt
*/

select * from products;
select * from orders;

select p.product_name , sum(o.unit) as "total_order"
from products p 
left join orders o 
on p.product_id = o.product_id
where order_date between "2020-02-01" and "2020-02-29"
group by p.product_name
having sum(o.unit) >= 100 ;


/*
Q35.
Table: Movies
Column Name Type
movie_id int
title varchar
movie_id is the primary key for this table.
The title is the name of the movie.
Table: Users
Column Name Type
user_id int
name varchar
user_id is the primary key for this table.
Table: MovieRating
Column Name Type
movie_id int
user_id int
rating int
created_at date
(movie_id, user_id) is the primary key for this table.
This table contains the rating of a movie by a user in their review.
created_at is the user's review date.
Write an SQL query to:
● Find the name of the user who has rated the greatest number of movies. In case of a tie,
return the lexicographically smaller user name.
● Find the movie name with the highest average rating in February 2020. In case of a tie, return
the lexicographically smaller movie name.
The query result format is in the following example.
Input:
Movies table:
movie_id title
1 Avengers
2 Frozen 2
3 Joker
Users table:
user_id name
1 Daniel
2 Monica
3 Maria
4 James
MovieRating table:
movie_id user_id rating created_at
1 1 3 2020-01-12
1 2 4 2020-02-11
1 3 2 2020-02-12
1 4 1 2020-01-01
2 1 5 2020-02-17
2 2 2 2020-02-01
2 3 2 2020-03-01
3 1 3 2020-02-22
3 2 4 2020-02-25
Output:
results
Daniel
Frozen 2
Explanation:
Daniel and Monica have rated 3 movies ("Avengers", "Frozen 2" and "Joker") but Daniel is smaller
lexicographically.
Frozen 2 and Joker have a rating average of 3.5 in February but Frozen 2 is smaller lexicographically.
*/

create table movies(
movie_id int,
title varchar(10),
primary key (movie_id));

create table Movie_Users(
user_id int,
name varchar(10),
primary key(user_id));

create table MovieRating(
movie_id int,
user_id int,
rating int,
created_at date,
primary key(movie_id,user_id));

desc movies;
desc Movie_users;
desc MovieRating;

insert into movies values
(1, 'Avengers'),
(2, 'Frozen 2'),
(3, 'Joker');

insert into movie_users values
(1 ,'Daniel'),
(2 ,'Monica'),
(3 ,'Maria'),
(4 ,'James');

insert into movierating values
(1 ,1 ,3 ,'2020-01-12'),
(1 ,2 ,4 ,'2020-02-11'),
(1 ,3 ,2 ,'2020-02-12'),
(1 ,4 ,1 ,'2020-01-01'),
(2 ,1 ,5 ,'2020-02-17'),
(2 ,2 ,2 ,'2020-02-01'),
(2 ,3 ,2 ,'2020-03-01'),
(3 ,1 ,3 ,'2020-02-22'),
(3 ,2 ,4 ,'2020-02-25');

select * from movies;
select * from movie_users;
select * from movierating;

# SOLUTION :-
select mu.name ,count(mr.movie_id) as "No Of Rating",avg(mr.rating)  as "Avg Rating", m.title as "Movie Name"
from movies m , movie_users mu , movierating mr
where m.movie_id = mr.movie_id 
and mu.user_id = mr.user_id
and  created_at between "2020-02-01" and "2020-02-29"
group by mu.name
order by avg(mr.rating) desc
limit 1;


/*
Q36.
Table: Users
Column Name Type
id int
name varchar
id is the primary key for this table.
name is the name of the user.
Table: Rides
Column Name Type
id int
user_id int
distance int
id is the primary key for this table.
user_id is the id of the user who travelled the distance "distance".
Write an SQL query to report the distance travelled by each user.
Return the result table ordered by travelled_distance in descending order, if two or more users
travelled the same distance, order them by their name in ascending order.
The query result format is in the following example.
Input:
Users table:
id name
1 Alice
2 Bob
3 Alex
4 Donald
7 Lee
13 Jonathan
19 Elvis
Rides table:
id user_id distance
1 1 120
2 2 317
3 3 222
4 7 100
5 13 312
6 19 50
7 7 120
8 19 400
9 7 230
Output:
name
travelled_distan
ce
Elvis 450
Lee 450
Bob 317
Jonathan 312
Alex 222
Alice 120
Donald 0
Explanation:
Elvis and Lee travelled 450 miles, Elvis is the top traveller as his name is alphabetically smaller than
Lee.
Bob, Jonathan, Alex, and Alice have only one ride and we just order them by the total distances of the
ride.
Donald did not have any rides, the distance travelled by him is 0.
*/


select * from users;
select * from Rides;

desc users;
desc rides;

# SOLUTION :-
select u.name , sum(r.distance) as "Distance Travelled"
from users u , rides r
where u.id = r.user_id
group by u.name
order by sum(r.distance) desc,u.name ;



/*
Q37.
Table: Employees
Column Name Type
id int
name varchar
id is the primary key for this table.
Each row of this table contains the id and the name of an employee in a company.
Table: EmployeeUNI
Column Name Type
id int
unique_id int
(id, unique_id) is the primary key for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the
company.
Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just
show null.
Return the result table in any order.
The query result format is in the following example.
Input:
Employees table:
id name
1 Alice
7 Bob
11 Meir
90 Winston
3 Jonathan
EmployeeUNI table:
id unique_id
3 1
11 2
90 3
Output:
unique_id name
null Alice
null Bob
2 Meir
3 Winston
1 Jonathan
Explanation:
Alice and Bob do not have a unique ID, We will show null instead.
The unique ID of Meir is 2.
The unique ID of Winston is 3.
The unique ID of Jonathan is 1.
*/

select * from employees;
select * from EmployeeUNI;

# SOLUTION :-
select eu.unique_id , e.name 
from EmployeeUNI eu 
right join employees e
on eu.id = e.id
order by eu.unique_id;

/*
Q38.
Table: Departments
Column Name Type
id int
name varchar
id is the primary key of this table.
The table has information about the id of each department of a university.
Table: Students
Column Name Type
id int
name varchar
department_id int
id is the primary key of this table.
The table has information about the id of each student at a university and the id of the department
he/she studies at.
Write an SQL query to find the id and the name of all students who are enrolled in departments that no
longer exist.
Return the result table in any order.
The query result format is in the following example.
Input:
Departments table:
id name
1 Electrical Engineering
7 Computer Engineering
13 Business Administration
Students table:
id name department_id
23 Alice 1
1 Bob 7
5 Jennifer 13
2 John 14
4 Jasmine 77
3 Steve 74
6 Luis 1
8 Jonathan 7
7 Daiana 33
11 Madelynn 1
Output:
id name
2 John
7 Daiana
4 Jasmine
3 Steve
Explanation:
John, Daiana, Steve, and Jasmine are enrolled in departments 14, 33, 74, and 77 respectively.
Department 14, 33, 74, and 77 do not exist in the Departments table.
*/

create table departments(
id int,
name varchar(25),
primary key(id) );

create table Students(
id int,
name varchar(15),
department_id int,
primary key(id) );

insert into departments values
(1, 'Electrical Engineering'),
(7 ,'Computer Engineering'),
(13, 'Business Administration');

insert into Students values
(23 ,'Alice' ,1),
(1, 'Bob' ,7),
(5, 'Jennifer' ,13),
(2, 'John' ,14),
(4, 'Jasmine' ,77),
(3, 'Steve' ,74),
(6, 'Luis' ,1),
(8, 'Jonathan', 7),
(7, 'Daiana' ,33),
(11, 'Madelynn' ,1);

select * from departments;
select * from Students;

# SOLUTION :-
select s.name ,s.department_id
from departments d 
right join Students s
on s.department_id = d.id
and d.id not in (select department_id from students);


/*
Q39.
Table: Calls
Column Name Type
from_id int
to_id int
duration int
This table does not have a primary key, it may contain duplicates.
This table contains the duration of a phone call between from_id and to_id.
from_id != to_id
Write an SQL query to report the number of calls and the total call duration between each pair of
distinct persons (person1, person2) where person1 < person2.
Return the result table in any order.
The query result format is in the following example.
Input:
Calls table:
from_id to_id duration
1 2 59
2 1 11
1 3 20
3 4 100
3 4 200
3 4 200
4 3 499
Output:
person1 person2 call_count total_duration
1 2 2 70
1 3 1 20
3 4 4 999
Explanation:
Users 1 and 2 had 2 calls and the total duration is 70 (59 + 11).
Users 1 and 3 had 1 call and the total duration is 20.
Users 3 and 4 had 4 calls and the total duration is 999 (100 + 200 + 200 + 499).
*/

create table Calls(
from_id int,
to_id int,
duration int);

insert into Calls values
(1 ,2, 59),
(2 ,1 ,11),
(1, 3, 20),
(3, 4, 100),
(3 ,4 ,200),
(3, 4, 200),
(4 ,3 ,499);

select * from Calls;

# SOLUTION :-
select from_id as "person1",to_id as "person2",sum(duration) as "total duration",count(*)
from calls
group by from_id , to_id;




/*
Q40.
Table: Prices
Column Name Type
product_id int
start_date date
end_date date
price int
(product_id, start_date, end_date) is the primary key for this table.
Each row of this table indicates the price of the product_id in the period from start_date to end_date.
For each product_id there will be no two overlapping periods. That means there will be no two
intersecting periods for the same product_id.
Table: UnitsSold
Column Name Type
product_id int
purchase_date date
units int
There is no primary key for this table, it may contain duplicates.
Each row of this table indicates the date, units, and product_id of each product sold.
Write an SQL query to find the average selling price for each product. average_price should be
rounded to 2 decimal places.
Return the result table in any order.
The query result format is in the following example.
Input:
Prices table:
product_id start_date end_date price
1 2019-02-17 2019-02-28 5
1 2019-03-01 2019-03-22 20
2 2019-02-01 2019-02-20 15
2 2019-02-21 2019-03-31 30
UnitsSold table:
product_id purchase_date units
1 2019-02-25 100
1 2019-03-01 15
2 2019-02-10 200
2 2019-03-22 30
Output:
product_id average_price
1 6.96
2 16.96
Explanation:
Average selling price = Total Price of Product / Number of products sold.
Average selling price for product 1 = ((100 * 5) + (15 * 20)) / 115 = 6.96
Average selling price for product 2 = ((200 * 15) + (30 * 30)) / 230 = 16.96
*/


select * from prices;
select * from unitsold;

# SOLUTION :-
select p.product_id , p.price,u.units,sum(p.price * u.units)/sum(u.units) as "average_unit"
from unitsold u join prices p 
on u.product_id = p.product_id
group by p.product_id;


SELECT
    U.product_id,
    ROUND(SUM(P.price * U.units) / SUM(U.units), 2) AS average_price
FROM unitsold U
JOIN Prices P ON U.product_id = P.product_id
    AND U.purchase_date >= P.start_date
    AND U.purchase_date <= P.end_date
GROUP BY U.product_id;


/*
Q42.
Table: Sales
Column Name Type
sale_date date
fruit enum
sold_num int
(sale_date, fruit) is the primary key for this table.
This table contains the sales of "apples" and "oranges" sold each day.
Write an SQL query to report the difference between the number of apples and oranges sold each day.
Return the result table ordered by sale_date.
The query result format is in the following example.
Input:
Sales table:
sale_date fruit sold_num
2020-05-01 apples 10
2020-05-01 oranges 8
2020-05-02 apples 15
2020-05-02 oranges 15
2020-05-03 apples 20
2020-05-03 oranges 0
2020-05-04 apples 15
2020-05-04 oranges 16
Output:
sale_date diff
2020-05-01 2
2020-05-02 0
2020-05-03 20
2020-05-04 -1
Explanation:
Day 2020-05-01, 10 apples and 8 oranges were sold (Difference 10 - 8 = 2).
Day 2020-05-02, 15 apples and 15 oranges were sold (Difference 15 - 15 = 0).
Day 2020-05-03, 20 apples and 0 oranges were sold (Difference 20 - 0 = 20).
Day 2020-05-04, 15 apples and 16 oranges were sold (Difference 15 - 16 = -1)
*/

create table FruitSales(
sale_date date,
fruit enum("apples","oranges"),
sold_num int,
primary key(sale_date,fruit));

insert into Fruitsales values
('2020-05-01', 'apples', 10),
('2020-05-01', 'oranges', 8),
('2020-05-02','apples' ,15),
('2020-05-02', 'oranges' ,15),
('2020-05-03' ,'apples' ,20),
('2020-05-03', 'oranges' ,0),
('2020-05-04' ,'apples' ,15),
('2020-05-04', 'oranges', 16);

select * from Fruitsales;

# Solution :-
select sale_date ,
sum(case when fruit ='apples' then sold_num else -sold_num end) as diff
from FruitSales
group by sale_date
order by sale_date;

/*
Q43.
Table: Activity
Column Name Type
player_id int
device_id int
event_date date
games_played int
(player_id, event_date) is the primary key of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before
logging out on someday using some device.
Write an SQL query to report the fraction of players that logged in again on the day after the day they
first logged in, rounded to 2 decimal places. In other words, you need to count the number of players
that logged in for at least two consecutive days starting from their first login date, then divide that
number by the total number of players.
The query result format is in the following example.
Input:
Activity table:
player_id device_id event_date games_played
1 2 2016-03-01 5
1 2 2016-03-02 6
2 3 2017-06-25 1
3 1 2016-03-02 0
3 4 2018-07-03 5
Output:
fraction
0.33
Explanation:
Only the player with id 1 logged back in after the first day he had logged in so the answer is 1/3 = 0.33
*/

select * from activity;
desc activity;

# SOLUTION :-

# not understand

/*
Q44.
Table: Employee
Column Name Type
id int
name varchar
department varchar
managerId int
id is the primary key column for this table.
Each row of this table indicates the name of an employee, their department, and the id of their
manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.
Write an SQL query to report the managers with at least five direct reports.
Return the result table in any order.
The query result format is in the following example.
Input:
Employee table:
id name department managerId
101 John A None
102 Dan A 101
103 James A 101
104 Amy A 101
105 Anne A 101
106 Ron B 101
Output:
name
John
*/

create table Employee_m(
id int,
name varchar(10),
department varchar(2),
managerId int,
primary key(id));

insert into Employee_m values
(101 ,'John' ,'A' ,null),
(102, 'Dan' ,'A' ,101),
(103, 'James', 'A' ,101),
(104 ,'Amy' ,'A' ,101),
(105, 'Anne' ,'A' ,101),
(106,'Ron', 'B' ,101);


select * from employee_m ;

# SOLUTION :-
select name
from employee_m
where managerId is NULL;


/*
Q45.
Table: Student
Column Name Type
student_id int
student_name varchar
gender varchar
dept_id int
student_id is the primary key column for this table.
dept_id is a foreign key to dept_id in the Department tables.
Each row of this table indicates the name of a student, their gender, and the id of their department.
Table: Department
Column Name Type
dept_id int
dept_name varchar
dept_id is the primary key column for this table.
Each row of this table contains the id and the name of a department.
Write an SQL query to report the respective department name and number of students majoring in
each department for all departments in the Department table (even ones with no current students).
Return the result table ordered by student_number in descending order. In case of a tie, order them by
dept_name alphabetically.
The query result format is in the following example.
Input:
Student table:
student_id student_name gender dept_id
1 Jack M 1
2 Jane F 1
3 Mark M 2
Department table:
dept_id dept_name
1 Engineering
2 Science
3 Law
Output:
dept_name
student_numbe
r
Engineering 2
Science 1
Law 0
*/

create table StudentTable(
student_id int,
student_name varchar(5),
gender varchar(5),
dept_id int,
primary key(student_id));

create table department(
dept_id int,
dept_name varchar(12),
primary key(dept_id)
);


insert into StudentTable values
(1 ,'Jack' ,'M', 1),
(2, 'Jane', 'F', 1),
(3 ,'Mark', 'M' ,2);

insert into department values
(1 ,'Engineering'),
(2, 'Science'),
(3, 'Law');

select * from studenttable;
select * from department;


# SOLUTION :-
select d.dept_name ,count(*) as "student_number"
from department d
right join studenttable s
on d.dept_id = s.dept_id
group by d.dept_name;

/*
Q46.
Table: Customer
Column Name Type
customer_id int
product_key int
There is no primary key for this table. It may contain duplicates.
product_key is a foreign key to the Product table.
Table: Product
Column Name Type
product_key int
product_key is the primary key column for this table.
Write an SQL query to report the customer ids from the Customer table that bought all the products in
the Product table.
Return the result table in any order.
The query result format is in the following example.
Input:
Customer table:
customer_id product_key
1 5
2 6
3 5
3 6
1 6
Product table:
product_key
5
6
Output:
customer_id
1
3
Explanation:
The customers who bought all the products (5 and 6) are customers with IDs 1 and 3.\
*/


create table customer1(
customer_id int,
product_key int);

create table product1(
product_key int,
primary key(product_key));

insert into customer1 values
(1 ,5),
(2 ,6),
(3 ,5),
(3 ,6),
(1 ,6);

insert into product1 values
(5),
(6);

select * from customer1;
select * from product1;

# SOLTION :-
select c.customer_id ,p.product_key
from customer1 c
left join product1 p
on c.product_key = p.product_key
where c.product_key =5 
and c.product_key = 6
group by customer_id;




