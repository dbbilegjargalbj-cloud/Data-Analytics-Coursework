# SELF JOIN

SELECT *
FROM customers c
JOIN customers ss
	ON c.first_name = ss.first_name
;

SELECT *
FROM customers c
JOIN customers ss
	ON c.customer_id +1 = ss.customer_id
;

SELECT *
FROM customers c
JOIN customers ss
	ON c.customer_id +1 = ss.customer_id
;

SELECT c.customer_id, c.first_name, c.last_name, ss.customer_id, ss.first_name, ss.last_name
FROM customers c
JOIN customers ss
	ON c.customer_id + 1 = ss.customer_id
;








