--weather_conditions

UPDATE UK_accidents.dbo.accidents
SET weather_conditions = CASE WHEN weather_conditions = 1 THEN REPLACE(weather_conditions, 1, 'Fine no high winds')
                              WHEN weather_conditions = 2 THEN REPLACE(weather_conditions, 2, 'Raining no high winds')
							  WHEN weather_conditions = 3 THEN REPLACE(weather_conditions, 3, 'Snowing no high winds')
							  WHEN weather_conditions = 4 THEN REPLACE(weather_conditions, 4, 'Fine + high winds')
							  WHEN weather_conditions = 5 THEN REPLACE(weather_conditions, 5, 'Raining + high winds')
							  WHEN weather_conditions = 6 THEN REPLACE(weather_conditions, 6, 'Snowing + high winds')
							  WHEN weather_conditions = 7 THEN REPLACE(weather_conditions, 7, 'Fog or mist')
							  WHEN weather_conditions = 8 THEN REPLACE(weather_conditions, 8, 'Other')
							  WHEN weather_conditions = 9 THEN REPLACE(weather_conditions, 9, 'Unknown')
							  ELSE NULL 
							  END