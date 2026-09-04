# Standardizing Data


SELECT * 
FROM bakery.customer_sweepstakes;

SELECT phone, REGEXP_REPLACE (phone, "[()-/+]", "")
FROM customer_sweepstakes
;

UPDATE customer_sweepstakes
SET phone = REGEXP_REPLACE (phone, "[()-/+]", "")
;

SELECT phone, CONCAT(SUBSTRING(phone, 1,3), "-", SUBSTRING(phone,4,3),"-", SUBSTRING(phone, 7,4))
FROM customer_sweepstakes
WHERE phone <> "";



UPDATE customer_sweepstakes
SET phone = CONCAT(SUBSTRING(phone, 1,3), "-", SUBSTRING(phone,4,3),"-", SUBSTRING(phone, 7,4))
WHERE phone <> "";

SELECT *
FROM customer_sweepstakes;



UPDATE customer_sweepstakes
SET birth_date = CONCAT(
    '19', SUBSTRING_INDEX(birth_date, '.', -1),                                  -- year
    '/',
    LPAD(SUBSTRING_INDEX(SUBSTRING_INDEX(birth_date, '.', -2), '.', 1), 2, '0'), -- month
    '/',
    LPAD(SUBSTRING_INDEX(birth_date, '.', 1), 2, '0')                             -- day
)
WHERE birth_date LIKE '%.%.%';


SELECT *
FROM customer_sweepstakes;


SELECT birth_date AS original_birth_date,
CONCAT(
    SUBSTRING_INDEX(birth_date,'/',-1),        -- year
    '/',
    SUBSTRING_INDEX(SUBSTRING_INDEX(birth_date,'/',2), '/', -1),  -- day
    '/',
    SUBSTRING_INDEX(birth_date,'/',1)         -- month
) AS transformed_birth_date
FROM customer_sweepstakes
WHERE birth_date LIKE '%/%';


UPDATE customer_sweepstakes
SET birth_date = CONCAT(
    SUBSTRING_INDEX(birth_date,'/',-1),        -- year
    '/',
    SUBSTRING_INDEX(SUBSTRING_INDEX(birth_date,'/',2), '/', -1),  -- day
    '/',
    SUBSTRING_INDEX(birth_date,'/',1)         -- month
)
WHERE birth_date LIKE '%/%';

SELECT *
FROM customer_sweepstakes;


SELECT birth_date AS original_birth_date,
CONCAT(
    SUBSTRING_INDEX(birth_date,'/',-1),        -- year
    '/',
    SUBSTRING_INDEX(SUBSTRING_INDEX(birth_date,'/',2), '/', -1),  -- day
    '/',
    SUBSTRING_INDEX(birth_date,'/',1)         -- month
) AS transformed_birth_date
FROM customer_sweepstakes
WHERE birth_date LIKE '%/%/%' 
  AND CAST(SUBSTRING_INDEX(birth_date,'/',1) AS UNSIGNED) <= 12;

UPDATE customer_sweepstakes
SET birth_date = CONCAT(
    SUBSTRING_INDEX(birth_date,'/',-1),        -- year
    '/',
    SUBSTRING_INDEX(SUBSTRING_INDEX(birth_date,'/',2), '/', -1),  -- day
    '/',
    SUBSTRING_INDEX(birth_date,'/',1)         -- month
)
WHERE birth_date LIKE '%/%/%' 
  AND CAST(SUBSTRING_INDEX(birth_date,'/',1) AS UNSIGNED) <= 12;

UPDATE customer_sweepstakes
SET birth_date = REPLACE(birth_date, '/', '-')
WHERE birth_date LIKE '%/%';




SELECT `Are you over 18?`,
CASE
	WHEN `Are you over 18?` = "YES" THEN "Y"
	WHEN `Are you over 18?` = "No" THEN "N"
    ELSE `Are you over 18?`
END
FROM customer_sweepstakes;


UPDATE customer_sweepstakes
SET `Are you over 18?` = CASE
	WHEN `Are you over 18?` = "YES" THEN "Y"
	WHEN `Are you over 18?` = "No" THEN "N"
    ELSE `Are you over 18?`
END
;






