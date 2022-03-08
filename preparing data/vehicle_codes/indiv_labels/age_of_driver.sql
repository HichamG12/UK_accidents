--age_of_driver
--age_band_of_driver

UPDATE UK_accidents.dbo.vehicles

SET age_of_driver = NULL 
WHERE age_of_driver = -1

UPDATE UK_accidents.dbo.vehicles
SET age_band_of_driver = CASE WHEN age_band_of_driver = 1  THEN REPLACE(age_band_of_driver, 1 , '0 - 5')
                              WHEN age_band_of_driver = 2  THEN REPLACE(age_band_of_driver, 2 , '6 - 10')
							  WHEN age_band_of_driver = 3  THEN REPLACE(age_band_of_driver, 3 , '11 - 15')
							  WHEN age_band_of_driver = 4  THEN REPLACE(age_band_of_driver, 4 , '16 - 20')
							  WHEN age_band_of_driver = 5  THEN REPLACE(age_band_of_driver, 5 , '21 - 25')
							  WHEN age_band_of_driver = 6  THEN REPLACE(age_band_of_driver, 6 , '26 - 35')
							  WHEN age_band_of_driver = 7  THEN REPLACE(age_band_of_driver, 7 , '36 - 45')
							  WHEN age_band_of_driver = 8  THEN REPLACE(age_band_of_driver, 8 , '46 - 55')
							  WHEN age_band_of_driver = 9  THEN REPLACE(age_band_of_driver, 9 , '56 - 65')
							  WHEN age_band_of_driver = 10 THEN REPLACE(age_band_of_driver, 10, '66 - 75')
							  WHEN age_band_of_driver = 11 THEN REPLACE(age_band_of_driver, 11, 'Over 75')
							  ELSE NULL 
							  END