-- Write your PostgreSQL query statement below
select distinct(r.contest_id) ,
       round(((count(r.user_id)*1.00*100 ) / (SELECT COUNT(*) FROM Users)), 2 ) as percentage
from Users u INNER JOIN
     Register r on u.user_id = r.user_id
group by r.contest_id 
order by percentage desc ;

-- count(u.user_id)  count(r.user_id)
