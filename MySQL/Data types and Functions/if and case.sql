# IF Funcion

# IF(condition, condition is true do this, condition is false do this)

SELECT tip,
IF(tip >1, "Amazing!", "Cheap...")
FROM customer_orders
;

SELECT order_total, 
tip,
IF(tip >2, order_total * .75, order_total * 1.1) as new_total
FROM customer_orders
;

# CASE STATEMENT
SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN "ORDER NOW!"
    WHEN units_in_stock BETWEEN 21 AND 50 THEN "CHECK IN 3 DAYS"
    WHEN units_in_stock > 51 THEN "IN STOCK"
END AS "Order Status"
FROM products
;

#ELSE
SELECT units_in_stock,
CASE
	WHEN units_in_stock < 20 THEN "ORDER NOW!"
    WHEN units_in_stock BETWEEN 21 AND 50 THEN "CHECK IN 3 DAYS"
    ELSE "IN STOCK"
END AS "Order Status"
FROM products
;


SELECT order_id, 
order_date,
CASE 
	WHEN YEAR(order_date) = YEAR(NOW()) - 4 THEN "Active"
    WHEN YEAR(order_date) = YEAR(NOW()) -5 THEN "LAST YEAR"
    ELSE "Archived"
END    
FROM customer_orders;
















