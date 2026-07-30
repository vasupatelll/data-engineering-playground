SELECT 
    contest_id, 
    ROUND(COUNT(DISTINCT user_id) * 100.00/ (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register 
GROUP BY contest_id
ORDER BY 2 DESC, contest_id ASC
