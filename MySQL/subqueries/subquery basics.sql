# Subqueries

# can use joins but when working with small data, subqueries is easier 


SELECT * 
FROM customers
;


SELECT * 
FROM customers
WHERE customer_id IN
	(
    SELECT customer_id  			# in subqueries you cant have more then one column
	FROM customer_orders
    )
;



SELECT *
FROM customers
WHERE total_money_spent > 
	(
    SELECT AVG(total_money_spent)
	FROM customers
    )
; 



