# Over Clause + Partition BY


SELECT *
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;

SELECT c.customer_id, first_name, MAX(order_total)
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
GROUP BY c.customer_id, first_name
;



SELECT c.customer_id, first_name, order_total, MAX(order_total) OVER() AS max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;

#same as from previous lesson

SELECT c.customer_id, first_name, order_total, 
(SELECT MAX(order_total) FROM customer_orders)
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;

# BUT OVER clause allows us to do smg that subuerry would not

# Partition BY

SELECT c.customer_id, 
first_name, 
order_total, 
MAX(order_total) OVER(PARTITION BY (customer_id)) AS max_order_total
FROM customers c
JOIN customer_orders co
	ON c.customer_id = co.customer_id
;
    
    
    
    
    
;