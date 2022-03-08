UPDATE UK_accidents.dbo.casualties
SET casualty_class = CASE WHEN casualty_class = 1 THEN REPLACE(casualty_class, 1, 'Driver or rider')
                          WHEN casualty_class = 2 THEN REPLACE(casualty_class, 2, 'Passenger')
						  WHEN casualty_class = 3 THEN REPLACE(casualty_class, 3, 'Pedestrian')
						  END