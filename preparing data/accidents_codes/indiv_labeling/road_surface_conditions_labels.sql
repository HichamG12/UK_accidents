--Label road surface conditions

UPDATE UK_accidents.dbo.accidents
SET road_surface_conditions = CASE WHEN road_surface_conditions = 1 THEN REPLACE(road_surface_conditions, 1, 'Dry')
                                   WHEN road_surface_conditions = 2 THEN REPLACE(road_surface_conditions, 2, 'Wet or damp')
								   WHEN road_surface_conditions = 3 THEN REPLACE(road_surface_conditions, 3, 'Snow')
								   WHEN road_surface_conditions = 4 THEN REPLACE(road_surface_conditions, 4, 'Frost or ice')
								   WHEN road_surface_conditions = 5 THEN REPLACE(road_surface_conditions, 5, 'Flood over 3cm. deep')
								   WHEN road_surface_conditions = 9 THEN REPLACE(road_surface_conditions, 9, 'unknown (self reported)')
								   ELSE NULL 
								   END
