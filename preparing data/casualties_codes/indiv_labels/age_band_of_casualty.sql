
UPDATE UK_accidents.dbo.casualties
SET age_band_of_casualty = CASE WHEN age_band_of_casualty = 1  THEN REPLACE(age_band_of_casualty, 1 , '0 - 5')
                                WHEN age_band_of_casualty = 2  THEN REPLACE(age_band_of_casualty, 2 , '6 - 10')
								WHEN age_band_of_casualty = 3  THEN REPLACE(age_band_of_casualty, 3 , '11 - 15')
								WHEN age_band_of_casualty = 4  THEN REPLACE(age_band_of_casualty, 4 , '16 - 20')
								WHEN age_band_of_casualty = 5  THEN REPLACE(age_band_of_casualty, 5 , '21 - 25')
								WHEN age_band_of_casualty = 6  THEN REPLACE(age_band_of_casualty, 6 , '26 - 35')
								WHEN age_band_of_casualty = 7  THEN REPLACE(age_band_of_casualty, 7 , '36 - 45')
								WHEN age_band_of_casualty = 8  THEN REPLACE(age_band_of_casualty, 8 , '46 - 55')
								WHEN age_band_of_casualty = 9  THEN REPLACE(age_band_of_casualty, 9 , '56 - 65')
								WHEN age_band_of_casualty = 10 THEN REPLACE(age_band_of_casualty, 10, '66 - 75')
								WHEN age_band_of_casualty = 11 THEN REPLACE(age_band_of_casualty, 11, 'Over 75')
								ELSE NULL 
								END
