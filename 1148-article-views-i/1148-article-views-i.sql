-- Write your PostgreSQL query statement below
select distinct author_id as id from views 
where (author_id - viewer_id) = 0 order by id asc ;