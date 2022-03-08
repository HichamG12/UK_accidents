
--Remplace days codes by its labels

UPDATE UK_accidents.dbo.accidents
SET day_of_week = CASE WHEN day_of_week = 1 THEN REPLACE(day_of_week, 1, 'Sunday') 
                       WHEN day_of_week = 2 THEN REPLACE(day_of_week, 2, 'Monday') 
	                   WHEN day_of_week = 3 THEN REPLACE(day_of_week, 3, 'Tuesday') 
	                   WHEN day_of_week = 4 THEN REPLACE(day_of_week, 4, 'Wednesday') 
	                   WHEN day_of_week = 5 THEN REPLACE(day_of_week, 5, 'Thursday') 
	                   WHEN day_of_week = 6 THEN REPLACE(day_of_week, 6, 'Friday') 
	                   WHEN day_of_week = 7 THEN REPLACE(day_of_week, 7, 'Saturday') 
	                   ELSE NULL 
					   END 



