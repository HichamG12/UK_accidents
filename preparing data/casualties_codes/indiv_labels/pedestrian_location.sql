ALTER TABLE dbo.casualties
ALTER COLUMN pedestrian_location VARCHAR(75)

UPDATE UK_accidents.dbo.casualties
SET pedestrian_location = CASE WHEN pedestrian_location = 0  THEN REPLACE(pedestrian_location, 0 , 'Not a Pedestrian')
                               WHEN pedestrian_location = 1  THEN REPLACE(pedestrian_location, 1 , 'Crossing on pedestrian crossing facility')
							   WHEN pedestrian_location = 2  THEN REPLACE(pedestrian_location, 2 , 'Crossing in zig-zag approach lines')
							   WHEN pedestrian_location = 3  THEN REPLACE(pedestrian_location, 3 , 'Crossing in zig-zag exit lines')
							   WHEN pedestrian_location = 4  THEN REPLACE(pedestrian_location, 4 , 'Crossing elsewhere within 50m. of pedestrian crossing')
							   WHEN pedestrian_location = 5  THEN REPLACE(pedestrian_location, 5 , 'In carriageway, crossing elsewhere')
							   WHEN pedestrian_location = 6  THEN REPLACE(pedestrian_location, 6 , 'On footway or verge')
							   WHEN pedestrian_location = 7  THEN REPLACE(pedestrian_location, 7 , 'On refuge, central island or central reservation')
							   WHEN pedestrian_location = 8  THEN REPLACE(pedestrian_location, 8 , 'In centre of carriageway - not on refuge, island or central reservation')
							   WHEN pedestrian_location = 9  THEN REPLACE(pedestrian_location, 9 , 'In carriageway, not crossing')
							   WHEN pedestrian_location = 10 THEN REPLACE(pedestrian_location, 10, 'Unknown or other')
							   ELSE NULL 
							   END