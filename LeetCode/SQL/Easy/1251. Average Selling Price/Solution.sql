SELECT
    product.product_id, 
    ROUND(COALESCE(SUM(product.price * sale.units) * 1.0 / NULLIF(SUM(sale.units), 0), 0), 2) AS average_price
FROM Prices product
LEFT JOIN UnitsSold sale
    ON product.product_id = sale.product_id
    AND sale.purchase_date BETWEEN product.start_date AND product.end_date
GROUP BY 1; 
