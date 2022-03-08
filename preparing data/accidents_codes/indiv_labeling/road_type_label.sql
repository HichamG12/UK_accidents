--Label road type

UPDATE UK_accidents.dbo.accidents
SET road_type = CASE WHEN road_type = 1  THEN REPLACE(road_type, 1 , 'Roundabout')
                     WHEN road_type = 2  THEN REPLACE(road_type, 2 , 'One way street')
					 WHEN road_type = 3  THEN REPLACE(road_type, 3 , 'Dual carriageway')
					 WHEN road_type = 6  THEN REPLACE(road_type, 6 , 'Single carriageway')
					 WHEN road_type = 7  THEN REPLACE(road_type, 7 , 'Slip road')
					 WHEN road_type = 9  THEN REPLACE(road_type, 9 , 'Unknown')
					 WHEN road_type = 12 THEN REPLACE(road_type, 12, 'One way street/Slip road')
					 ELSE NULL
					 END

