SELECT customer.name 
    FROM Customer customer
    WHERE customer.referee_id != 2 OR customer.referee_id IS NULL
    ORDER BY customer.id