use first_assignment;

create table product_info(
product_id int,
product_name varchar(10));

insert into product_info values 
(1001,'blog'),
(1002,"youtube"),
(1003,"education");

create table product_info_likes(
user_id int,
product_id int,
liked_date date);

insert into product_info_likes values
(1,1001,"2020-03-10"),
(2,1003,"2020-04-15");

select * from product_info;
select * from product_info_likes;


# SOLUTION :-
select pi.product_id 
from product_info pi, product_info_likes pil
where pi.product_id != pil.product_id
and pi.product_id not in (select product_id from product_info_likes)
group by product_id;