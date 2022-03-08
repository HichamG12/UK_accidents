
UPDATE UK_accidents.dbo.casualties
SET pedestrian_road_maintenance_worker = CASE WHEN pedestrian_road_maintenance_worker = 0 THEN REPLACE(pedestrian_road_maintenance_worker, 0, 'No / Not applicable')
                                              WHEN pedestrian_road_maintenance_worker = 1 THEN REPLACE(pedestrian_road_maintenance_worker, 1, 'Yes')
											  WHEN pedestrian_road_maintenance_worker = 2 THEN REPLACE(pedestrian_road_maintenance_worker, 2, 'Not Known')
											  WHEN pedestrian_road_maintenance_worker = 3 THEN REPLACE(pedestrian_road_maintenance_worker, 3, 'Probable')
											  ELSE NULL 
											  END             