SELECT
    TO_CHAR(trans_date, 'YYYY-MM') AS month,
    country,
    COUNT(id) AS trans_count,
    SUM(CASE WHEN t.state = 'approved' THEN 1 ELSE 0 END) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(CASE WHEN t.state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM 
    Transactions t
GROUP BY
    TO_CHAR(trans_date, 'YYYY-MM'),
    2
