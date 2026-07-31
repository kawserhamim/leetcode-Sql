-- Write your PostgreSQL query statement below
select A.name ,
       B.bonus
       from Employee A
       left Join Bonus B
       on A.empId = B.empId 
       WHERE B.bonus IS NULL OR B.bonus < 1000;
       