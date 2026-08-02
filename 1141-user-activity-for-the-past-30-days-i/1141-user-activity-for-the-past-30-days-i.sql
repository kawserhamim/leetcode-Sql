-- Write your PostgreSQL query statement below
SELECT distinct(activity_date) as day ,
count(distinct(user_id)) as active_users
FROM Activity
where activity_date >= '2019-06-28' and activity_date <= '2019-07-27'
group by activity_date;