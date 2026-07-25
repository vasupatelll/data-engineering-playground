SELECT
    prod.product_name,
    sale.year,
    sale.price
FROM Sales sale
JOIN Product prod 
    on prod.product_id = sale.product_id