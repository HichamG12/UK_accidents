--vehicle_manoeuvre

UPDATE UK_accidents.dbo.vehicles
SET vehicle_manoeuvre = CASE WHEN vehicle_manoeuvre = 1  THEN REPLACE(vehicle_manoeuvre, 1 , 'Reversing')
                             WHEN vehicle_manoeuvre = 2  THEN REPLACE(vehicle_manoeuvre, 2 , 'Parked')
		                     WHEN vehicle_manoeuvre = 3  THEN REPLACE(vehicle_manoeuvre, 3 , 'Waiting to go - held up')
		                     WHEN vehicle_manoeuvre = 4  THEN REPLACE(vehicle_manoeuvre, 4 , 'Slowing or stopping')
		                     WHEN vehicle_manoeuvre = 5  THEN REPLACE(vehicle_manoeuvre, 5 , 'Moving off')
		                     WHEN vehicle_manoeuvre = 6  THEN REPLACE(vehicle_manoeuvre, 6 , 'U-turn')
		                     WHEN vehicle_manoeuvre = 7  THEN REPLACE(vehicle_manoeuvre, 7 , 'Turning left')
		                     WHEN vehicle_manoeuvre = 8  THEN REPLACE(vehicle_manoeuvre, 8 , 'Waiting to turn left')
		                     WHEN vehicle_manoeuvre = 9  THEN REPLACE(vehicle_manoeuvre, 9 , 'Turning right')
		                     WHEN vehicle_manoeuvre = 10 THEN REPLACE(vehicle_manoeuvre, 10, 'Waiting to turn right')
		                     WHEN vehicle_manoeuvre = 11 THEN REPLACE(vehicle_manoeuvre, 11, 'Changing lane to left')
		                     WHEN vehicle_manoeuvre = 12 THEN REPLACE(vehicle_manoeuvre, 12, 'Changing lane to right')
		                     WHEN vehicle_manoeuvre = 13 THEN REPLACE(vehicle_manoeuvre, 13, 'Overtaking moving vehicle - offside')
		                     WHEN vehicle_manoeuvre = 14 THEN REPLACE(vehicle_manoeuvre, 14, 'Overtaking static vehicle - offside')
		                     WHEN vehicle_manoeuvre = 15 THEN REPLACE(vehicle_manoeuvre, 15, 'Overtaking - nearside')
		                     WHEN vehicle_manoeuvre = 16 THEN REPLACE(vehicle_manoeuvre, 16, 'Going ahead left-hand bend')
		                     WHEN vehicle_manoeuvre = 17 THEN REPLACE(vehicle_manoeuvre, 17, 'Going ahead right-hand bend')
		                     WHEN vehicle_manoeuvre = 18 THEN REPLACE(vehicle_manoeuvre, 18, 'Going ahead other')
		                     WHEN vehicle_manoeuvre = 99 THEN REPLACE(vehicle_manoeuvre, 99, 'unknown (self reported)')
		                     ELSE NULL 
		                     END