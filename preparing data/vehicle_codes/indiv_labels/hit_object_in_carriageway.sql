--hit_object_in_carriageway	

UPDATE UK_accidents.dbo.vehicles
SET hit_object_in_carriageway = CASE WHEN hit_object_in_carriageway = 0  THEN REPLACE(hit_object_in_carriageway, 0 , 'None')
                                     WHEN hit_object_in_carriageway = 1  THEN REPLACE(hit_object_in_carriageway, 1 , 'Previous accident')
									 WHEN hit_object_in_carriageway = 2  THEN REPLACE(hit_object_in_carriageway, 2 , 'Road works')			
									 WHEN hit_object_in_carriageway = 4  THEN REPLACE(hit_object_in_carriageway, 4 , 'Parked vehicle')
									 WHEN hit_object_in_carriageway = 5  THEN REPLACE(hit_object_in_carriageway, 5 , 'Bridge (roof)')
									 WHEN hit_object_in_carriageway = 6  THEN REPLACE(hit_object_in_carriageway, 6 , 'Bridge (side)')
									 WHEN hit_object_in_carriageway = 7  THEN REPLACE(hit_object_in_carriageway, 7 , 'Bollard or refuge')
									 WHEN hit_object_in_carriageway = 8  THEN REPLACE(hit_object_in_carriageway, 8 , 'Open door of vehicle')
									 WHEN hit_object_in_carriageway = 9  THEN REPLACE(hit_object_in_carriageway, 9 , 'Central island of roundabout')
									 WHEN hit_object_in_carriageway = 10 THEN REPLACE(hit_object_in_carriageway, 10, 'Kerb')
									 WHEN hit_object_in_carriageway = 11 THEN REPLACE(hit_object_in_carriageway, 11, 'Other object')
									 WHEN hit_object_in_carriageway = 12 THEN REPLACE(hit_object_in_carriageway, 12, 'Any animal (except ridden horse)')
									 WHEN hit_object_in_carriageway = 99 THEN REPLACE(hit_object_in_carriageway, 99, 'unknown (self reported)')
									 ELSE NULL 
									 END