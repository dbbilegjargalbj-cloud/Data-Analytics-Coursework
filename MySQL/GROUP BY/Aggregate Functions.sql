# Aggregate Functions

SELECT customer_id, AVG(tip) AS average_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY average_tips
;


SELECT customer_id, MAX(tip) AS biggest_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY biggest_tips
;

SELECT customer_id, MIN(tip) AS smallest_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY smallest_tips
;

SELECT customer_id, COUNT(tip) AS count_of_tips
FROM customer_orders
GROUP BY customer_id
ORDER BY count_of_tips
;


SELECT customer_id, COUNT(tip) AS count_of_tips # counts even if 0 is tipped
FROM customer_orders
GROUP BY customer_id
;

SELECT first_name, last_name, COUNT(phone)
FROM customers
GROUP BY first_name, last_name
;

SELECT product_id, tip, COUNT(tip), COUNT(DISTINCT tip)
FROM customer_orders
GROUP BY product_id, tip
ORDER BY product_id
;




