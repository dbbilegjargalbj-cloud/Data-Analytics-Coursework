# String Functions

SELECT *
FROM customers
;

SELECT first_name, LENGTH(first_name) AS Len_first
FROM customers
ORDER BY LENGTH(first_name)
;

SELECT first_name, UPPER(first_name) AS upper_first
FROM customers
ORDER BY LENGTH(first_name)
;

SELECT first_name, LOWER(first_name) AS lower_first
FROM customers
ORDER BY LENGTH(first_name)
;

SELECT TRIM("  sky"), LTRIM("  sky   "), RTRIM("     sky    ");

SELECT "I    LOVE    SQL", TRIM("I    LOVE     SQL");


SELECT LEFT("Alexander", 4);


SELECT first_name, LEFT(first_name, 3)
FROM customers
;

SELECT first_name, RIGHT(first_name, 3)
FROM customers
;


SELECT SUBSTRING("Alexander", 2,3); #start at 2 and 3 letters, 2nd INCLUDED!

SELECT phone, SUBSTRING(phone, 1, 3)
FROM customers
;


SELECT phone, SUBSTRING(phone, 5, 3)
FROM customers
;

SELECT phone,SUBSTRING(phone, 1, 3), 
SUBSTRING(phone, 5, 3),  
SUBSTRING(phone, 9, 3)
FROM customers
;

SELECT first_name, REPLACE(first_name, "a", "z")
FROM customers
;

SELECT REPLACE(phone, "-", "")
FROM customers
;

SELECT LOCATE("x", "Alexander")
;


SELECT first_name, LOCATE("Mic", first_name)
FROM customers
;

SELECT CONCAT("Alex", " Freberg");


