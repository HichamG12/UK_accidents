
ALTER TABLE dbo.casualties
ALTER COLUMN pedestrian_movement VARCHAR(100)

UPDATE UK_accidents.dbo.casualties
SET pedestrian_movement = CASE WHEN pedestrian_movement = 0 THEN REPLACE(pedestrian_movement, 0, 'Not a Pedestrian')
                               WHEN pedestrian_movement = 1 THEN REPLACE(pedestrian_movement, 1, 'Crossing from driver nearside')
							   WHEN pedestrian_movement = 2 THEN REPLACE(pedestrian_movement, 2, 'Crossing from nearside (masked by parked or stationary vehicle)')
							   WHEN pedestrian_movement = 3 THEN REPLACE(pedestrian_movement, 3, 'Crossing from driver offside')
							   WHEN pedestrian_movement = 4 THEN REPLACE(pedestrian_movement, 4, 'Crossing from offside (masked by  parked or stationary vehicle)')
							   WHEN pedestrian_movement = 5 THEN REPLACE(pedestrian_movement, 5, 'In carriageway stationary, not crossing (standing or playing)')
							   WHEN pedestrian_movement = 6 THEN REPLACE(pedestrian_movement, 6, 'In carriageway stationary, not crossing (standing or playing) masked by parked or stationary vehicle')
							   WHEN pedestrian_movement = 7 THEN REPLACE(pedestrian_movement, 7, 'Walking along in carriageway facing traffic')
							   WHEN pedestrian_movement = 8 THEN REPLACE(pedestrian_movement, 8, 'Walking along in carriageway back to traffic')
							   WHEN pedestrian_movement = 9 THEN REPLACE(pedestrian_movement, 9, 'Unknown or other')
							   ELSE NULL 
							   END
