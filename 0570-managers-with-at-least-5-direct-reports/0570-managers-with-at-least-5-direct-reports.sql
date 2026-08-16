-- Write your PostgreSQL query statement below
select e.name 
from employee e inner join
employee e1 on e.id = e1.managerId 
group by e.id , e.name
Having count(e1.managerId) >= 5 ;
