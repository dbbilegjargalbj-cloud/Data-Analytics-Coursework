SELECT last_name, 
first_name, 
birth_date, 
phone, city, 
state,
total_money_spent,
total_money_spent + 100 * 10
FROM customers;

SELECT state
FROM customers;

Select DISTINCT city, state
FROM customers;