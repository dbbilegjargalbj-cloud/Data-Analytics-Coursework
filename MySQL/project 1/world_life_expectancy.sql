SELECT * 
FROM world_life_expectancy;

# Find Duplicates
SELECT Country, Year, CONCAT(Country, Year), COUNT(CONCAT(Country, Year))
FROM world_life_expectancy
GROUP BY Country, Year, CONCAT(Country, Year)
HAVING COUNT(CONCAT(Country, Year)) > 1
;


#Get ROW IDs
SELECT *
FROM(
	SELECT Row_ID,
	CONCAT(Country, Year),
	ROW_NUMBER() OVER(PARTITION BY CONCAT(Country, Year) ORDER BY CONCAT(Country, Year)) as Row_Num
	FROM world_life_expectancy
    ) AS Row_table
WHERE Row_Num > 1
;


DELETE FROM world_life_expectancy
WHERE
	Row_ID IN(
		SELECT Row_ID
		FROM(
			SELECT Row_ID,
			CONCAT(Country, Year),
			ROW_NUMBER() OVER(PARTITION BY CONCAT(Country, Year) ORDER BY CONCAT(Country, Year)) as Row_Num
			FROM world_life_expectancy
			) AS Row_table
		WHERE Row_Num > 1
    )
    ;
    
SELECT * 
FROM world_life_expectancy;

# Check the column Status

SELECT *
FROM world_life_expectancy
WHERE Status = ""
;

# Check for values in the column Status  --> Developing and Developed
SELECT DISTINCT(Status)
FROM world_life_expectancy
WHERE Status <> ""
;


SELECT DISTINCT(Country)
FROM world_life_expectancy
WHERE Status = "Developing"
;

#JOIN TO ITSLEF IN AN UPDATE STATEMENT
# we are doing so because we cant say: take it 'developing' status from here, but not from here. it would cancel itself out. 
# with self join we can filter on the other table

UPDATE world_life_expectancy T1
JOIN world_life_expectancy T2
	ON t1.Country = t2.Country
SET t1.Status = "Developing"
WHERE t1.Status = ""
AND t2.Status <> ""
AND t2.Status = "Developing"
;


SELECT *
FROM world_life_expectancy
WHERE Country = 'United States of America'
;
 

UPDATE world_life_expectancy T1
JOIN world_life_expectancy T2
	ON t1.Country = t2.Country
SET t1.Status = "Developed"
WHERE t1.Status = ""
AND t2.Status <> ""
AND t2.Status = "Developed"
;

# Checking for nulls 
SELECT *
FROM world_life_expectancy
WHERE Status IS NULL
;

SELECT *
FROM world_life_expectancy
WHERE Lifeexpectancy = ""
;


SELECT Country, Year, Lifeexpectancy
FROM world_life_expectancy
#WHERE `Lifeexpectancy` = ""
;


SELECT t1.Country, t1.Year, t1.Lifeexpectancy, 
t2.Country, t2.Year, t2.Lifeexpectancy,
t3.Country, t3.Year, t3.Lifeexpectancy,
ROUND((t2.Lifeexpectancy + t3.Lifeexpectancy)/2,1)
FROM world_life_expectancy t1
JOIN world_life_expectancy t2
	ON t1.Country = t2.Country 
    AND t1.Year = t2.Year-1
JOIN world_life_expectancy t3
	ON t1.Country = t3.Country 
    AND t1.Year = t3.Year+1
WHERE t1.Lifeexpectancy = ""
;

UPDATE world_life_expectancy t1
JOIN world_life_expectancy t2
	ON t1.Country = t2.Country 
    AND t1.Year = t2.Year - 1
JOIN world_life_expectancy t3
	ON t1.Country = t3.Country 
    AND t1.Year = t3.Year + 1
SET t1.Lifeexpectancy = ROUND((t2.Lifeexpectancy + t3.Lifeexpectancy)/2,1)
WHERE t1.Lifeexpectancy = ""
;

SELECT *
FROM world_life_expectancy
;






