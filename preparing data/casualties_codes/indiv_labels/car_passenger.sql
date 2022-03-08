
UPDATE UK_accidents.dbo.casualties
SET car_passenger =  CASE WHEN car_passenger = 0 THEN REPLACE(car_passenger, 0, 'Not car passenger')
                          WHEN car_passenger = 1 THEN REPLACE(car_passenger, 1, 'Front seat passenger')
						  WHEN car_passenger = 2 THEN REPLACE(car_passenger, 2, 'Rear seat passenger')
						  WHEN car_passenger = 9 THEN REPLACE(car_passenger, 9, 'unknown (self reported)')
						  ELSE NULL 
						  END
                          