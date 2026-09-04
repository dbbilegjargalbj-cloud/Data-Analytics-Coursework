# Lag and Lead



SELECT *,
LAG(salary) OVER()
FROM employees
;


SELECT *,
LAG(salary) OVER(),
LEAD(salary) OVER()
FROM employees
;


SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id)
FROM employees
;

# to see the pay gap:
SELECT *, lag_col - salary AS pay_discrepancy
FROM
(
SELECT *,
LAG(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_col
FROM employees
) AS lag_table
;


# to see the pay gap:
SELECT *, lag_col - salary AS pay_discrepancy
FROM
(
SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_col
FROM employees
) AS lag_table
;

# IF AND CASE STATEMENTS

SELECT *, IF(salary > lag_col, "MORE", "LESS")
FROM
(
SELECT *,
LEAD(salary) OVER(PARTITION BY department ORDER BY employee_id) as lag_col
FROM employees
) AS lag_table
;
