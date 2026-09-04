# Removing Duplicates


# ALTER TABLE customer_sweepstakes RENAME COLUMN ``TO ``;


# IDENTIFY DUPLICATES
SELECT customer_id, COUNT(customer_id)
FROM bakery.customer_sweepstakes
GROUP BY customer_id
HAVING COUNT(customer_id) > 1
;


# ADVANCED WAY USING WINDOW FUNCTION
SELECT *
FROM(
SELECT customer_id, 
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY customer_id) AS row_num
FROM bakery.customer_sweepstakes) AS table_row
WHERE row_num > 1
;


# DELETE duplicates
DELETE FROM customer_sweepstakes
WHERE sweepstake_id IN ( 

	SELECT sweepstake_id
	FROM(
		SELECT sweepstake_id, 
		ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY customer_id) AS row_num
		FROM bakery.customer_sweepstakes) AS table_row
        WHERE row_num > 1
        );
        

        
        
        

