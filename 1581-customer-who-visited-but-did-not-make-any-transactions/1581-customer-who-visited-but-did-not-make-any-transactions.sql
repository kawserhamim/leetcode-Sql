-- Write your PostgreSQL query statement below
SELECT 
    v.customer_id,
    COUNT(*) - COUNT(t.visit_id) AS count_no_trans
FROM visits v
LEFT JOIN transactions t ON v.visit_id = t.visit_id
GROUP BY v.customer_id
HAVING COUNT(*) - COUNT(t.visit_id) > 0;