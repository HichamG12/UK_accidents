--vehicle direction

UPDATE UK_accidents.dbo.vehicles

SET vehicle_direction_from = CASE WHEN vehicle_direction_from = '0' THEN REPLACE(vehicle_direction_from, '0', 'Parked')
                                  WHEN vehicle_direction_from = '1' THEN REPLACE(vehicle_direction_from, '1', 'North')
								  WHEN vehicle_direction_from = '2' THEN REPLACE(vehicle_direction_from, '2', 'North East')
								  WHEN vehicle_direction_from = '3' THEN REPLACE(vehicle_direction_from, '3', 'East')
								  WHEN vehicle_direction_from = '4' THEN REPLACE(vehicle_direction_from, '4', 'South East')
								  WHEN vehicle_direction_from = '5' THEN REPLACE(vehicle_direction_from, '5', 'South East')
								  WHEN vehicle_direction_from = '6' THEN REPLACE(vehicle_direction_from, '6', 'South West')
								  WHEN vehicle_direction_from = '7' THEN REPLACE(vehicle_direction_from, '7', 'West')
								  WHEN vehicle_direction_from = '8' THEN REPLACE(vehicle_direction_from, '8', 'North West')
								  WHEN vehicle_direction_from = '9' THEN REPLACE(vehicle_direction_from, '9', 'unknown (self reported)')
								  END

    ,vehicle_direction_to = CASE  WHEN vehicle_direction_to = '0' THEN REPLACE(vehicle_direction_to, '0', 'Parked')
                                  WHEN vehicle_direction_to = '1' THEN REPLACE(vehicle_direction_to, '1', 'North')
								  WHEN vehicle_direction_to = '2' THEN REPLACE(vehicle_direction_to, '2', 'North East')
								  WHEN vehicle_direction_to = '3' THEN REPLACE(vehicle_direction_to, '3', 'East')
								  WHEN vehicle_direction_to = '4' THEN REPLACE(vehicle_direction_to, '4', 'South East')
								  WHEN vehicle_direction_to = '5' THEN REPLACE(vehicle_direction_to, '5', 'South East')
								  WHEN vehicle_direction_to = '6' THEN REPLACE(vehicle_direction_to, '6', 'South West')
								  WHEN vehicle_direction_to = '7' THEN REPLACE(vehicle_direction_to, '7', 'West')
								  WHEN vehicle_direction_to = '8' THEN REPLACE(vehicle_direction_to, '8', 'North West')
								  WHEN vehicle_direction_to = '9' THEN REPLACE(vehicle_direction_to, '9', 'unknown (self reported)')
								  END
