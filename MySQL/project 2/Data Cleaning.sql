# US Household Income Data Cleaning

SELECT * 
FROM US_Project.us_household_income;

SELECT * 
FROM US_Project.us_household_income_statistics;

SELECT COUNT(id) 
FROM US_Project.us_household_income;

SELECT COUNT(id) 
FROM US_Project.us_household_income_statistics;

# check duplicates in us_household_income
SELECT id, COUNT(id)
FROM us_project.us_household_income
GROUP BY id
HAVING COUNT(id) > 1
;

#remove duplicates

DELETE FROM us_household_income
WHERE row_id IN(
	SELECT row_id
	FROM(
		SELECT row_id, 
		id,
		ROW_NUMBER() OVER(PARTITION BY id ORDER BY id) row_num
		FROM us_project.us_household_income
		) duplicates
	WHERE row_num > 1
)
;


# check duplicates in us_household_income_statistics
SELECT id, COUNT(id)
FROM us_project.us_household_income_statistics
GROUP BY id
HAVING COUNT(id) > 1
;

SELECT DISTINCT State_Name
FROM us_project.us_household_income
ORDER BY 1
;


UPDATE us_project.us_household_income
SET State_Name = "Georgia"
WHERE State_Name = "georia"
;

UPDATE us_project.us_household_income
SET State_Name = "Alabama"
WHERE State_Name = "alabama"
;



SELECT *
FROM us_project.us_household_income
WHERE Place IS NULL
ORDER BY 1
;


UPDATE us_household_income
SET Place = "Autaugaville"
WHERE County = "Autauga County"
AND City = "Vinemont"
;

SELECT Type, COUNT(Type)
FROM us_project.us_household_income
GROUP BY Type
;

UPDATE us_household_income
SET Type = "Borough"
WHERE Type = "Boroughs"
;


SELECT *
FROM us_project.us_household_income
;

SELECT ALand, AWater
FROM us_project.us_household_income
WHERE (ALAND = 0 OR ALAND = "" OR AWater IS NULL)
;









