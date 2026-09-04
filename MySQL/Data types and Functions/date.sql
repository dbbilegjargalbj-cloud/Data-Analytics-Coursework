# DATE AND DATE FORMAT FUNCTIONS

SELECT * 
FROM customers
;

SELECT NOW(),
CURDATE(),
CURTIME()
;


SELECT YEAR(NOW()),
MONTH(NOW()),
DAY(NOW())
;

SELECT *
FROM customers
WHERE YEAR(birth_date) = YEAR(NOW())
;

SELECT *
FROM customer_orders
WHERE YEAR(order_date) = YEAR(NOW()) - 4 #WHERE YEAR(order_date) + 4 = YEAR(NOW())
;

SELECT DAYNAME(NOW());

SELECT order_date, DAYNAME(order_date), MONTHNAME(order_date)
FROM customer_orders;

SELECT birth_date, DATE_FORMAT(birth_date, "%M %d %Y")
FROM customers;


SELECT birth_date, DATE_FORMAT(birth_date, "%m-%d-%y")
FROM customers;













