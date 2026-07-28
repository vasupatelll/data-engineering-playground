SELECT 
    sign.user_id, 
    ROUND(COALESCE(AVG(CASE WHEN confirm.action = 'confirmed' THEN 1.0 ELSE 0.0 END), 0), 2) AS confirmation_rate
FROM Signups sign
LEFT JOIN Confirmations confirm
    ON sign.user_id = confirm.user_id
GROUP BY 1

