# AND, Or, Not

SELECT *
FROM customers
;

SELECT *
FROM customers
WHERE state = "PA" AND total_money_spent > 1000
;

SELECT *
FROM customers
WHERE state = "PA" OR total_money_spent > 1000
;

SELECT *
FROM customers
WHERE (state = "PA" OR city = "NEW YORK") AND total_money_spent > 1000
;

SELECT *
FROM customers
WHERE (state = "PA" OR city = "NEW YORK") OR birth_Date > "1998-01-01"
;


SELECT *
FROM customers
WHERE NOT state = "PA"
;

SELECT *
FROM customers
WHERE NOT (state = "PA" OR city = "NEW YORK") OR birth_Date > "1998-01-01"
;







