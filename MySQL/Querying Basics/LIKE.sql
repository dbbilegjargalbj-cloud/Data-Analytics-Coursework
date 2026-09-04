# Like Operator

SELECT * 
FROM customers
WHERE first_name LIKE "k%"
;

SELECT * 
FROM customers
WHERE first_name LIKE "%n%"
;

SELECT * 
FROM customers
WHERE first_name LIKE "_o_"
;


SELECT * 
FROM customers
WHERE first_name LIKE "%o%"
;


SELECT * 
FROM customers
WHERE first_name LIKE "___kin"
;


SELECT * 
FROM customers
WHERE last_name LIKE "s_____%"
;


SELECT * 
FROM customers
WHERE phone LIKE "975%"
;





;