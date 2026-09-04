# Exists


#uses on extremely large datasets

SELECT * 
FROM customers c
WHERE EXISTS
	(
    SELECT customer_id
    FROM customer_orders
    WHERE customer_id = c.customer_id
    )
;




