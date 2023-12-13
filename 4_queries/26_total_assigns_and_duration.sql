SELECT 
       day,
       count(id) as number_or_assignments,
       sum(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;
