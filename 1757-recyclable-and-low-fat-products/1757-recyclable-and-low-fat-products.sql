-- Write your PostgreSQL query statement below
-- select * from products ;
select product_id from  products 
where low_fats = 'Y' and recyclable  = 'Y' ;