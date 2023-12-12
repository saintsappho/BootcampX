SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
-- HAVING count(*) >= 10 --  only show over 10
ORDER BY day;