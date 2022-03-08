--junction_location

ALTER TABLE dbo.vehicles
ALTER COLUMN junction_location varchar(60)

UPDATE UK_accidents.dbo.vehicles
SET junction_location = CASE WHEN junction_location = 0  THEN REPLACE(junction_location, 0, 'junction_location')
                             WHEN junction_location = 1  THEN REPLACE(junction_location, 1, 'Approaching junction or waiting/parked at junction approach')
							 WHEN junction_location = 2  THEN REPLACE(junction_location, 2, 'Cleared junction or waiting/parked at junction exit')
							 WHEN junction_location = 3  THEN REPLACE(junction_location, 3, 'Leaving roundabout')
							 WHEN junction_location = 4  THEN REPLACE(junction_location, 4, 'Entering roundabout')
							 WHEN junction_location = 5  THEN REPLACE(junction_location, 5, 'Leaving main road')
							 WHEN junction_location = 6  THEN REPLACE(junction_location, 6, 'Entering main road')
							 WHEN junction_location = 7  THEN REPLACE(junction_location, 7, 'Entering from slip road')
							 WHEN junction_location = 8  THEN REPLACE(junction_location, 8, 'Mid Junction - on roundabout or on main road')
							 WHEN junction_location = 9  THEN REPLACE(junction_location, 9, 'unknown (self reported)')
							 ELSE NULL 
							 END