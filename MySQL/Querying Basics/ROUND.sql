# Numeric Functions

SELECT * 
FROM products
;

SELECT ROUND(123,456789);

SELECT sale_price, ROUND(sale_price,1)
FROM products
;


SELECT CEILING(5.7); #ROUNDS UP

SELECT FLOOR(5.7); # ROUNDS DOWN

SELECT sale_price, CEILING (sale_price)
FROM products
;


SELECT sale_price, FLOOR (sale_price)
FROM products
;

SELECT ABS(-4.6); # Absolute positive value















