# LIMIT Clause

SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 5 #only first 5 rows
;



SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 5, 2 -- start form row 5 then show next 2 rows, NOT INCLUDING 5th!
;

SELECT *
FROM customers
-- WHERE total_money_spent > 10000
ORDER BY total_money_spent DESC
LIMIT 2, 5 -- start form row 5 then show next 2 rows, NOT INCLUDING 5th!
;



