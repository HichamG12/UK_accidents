UPDATE UK_accidents.dbo.casualties
SET sex_of_casualty = CASE WHEN sex_of_casualty = 1 THEN REPLACE(sex_of_casualty, 1, 'Male')
                           WHEN sex_of_casualty = 2 THEN REPLACE(sex_of_casualty, 2, 'Female')
						   WHEN sex_of_casualty = 9 THEN REPLACE(sex_of_casualty, 9, 'unknown (self reported)')
						   ELSE NULL
						   END